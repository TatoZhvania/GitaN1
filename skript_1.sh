#!/bin/bash

# მომხმარებლის შექმნა
sudo useradd -m -s /bin/bash gita 2>/dev/null || echo "User 'gita' already exists."

# ჯგუფის შექმნა
sudo groupadd EU 2>/dev/null || echo "Group 'EU' already exists."

# მომხმარებლის დამატება ჯგუფში
sudo usermod -aG EU gita

# დირექტორიის გადამოწმება
HOMEDIR=$(eval echo ~gita)

if [ ! -d "$HOMEDIR" ]; then
    echo "Gita's home directory does not exist. Exiting."
    exit 1
fi

# ფაილების შექმნა
for i in {1..100}; do
    FILE="$HOMEDIR/$i.log"
    echo "this is log file for gita" | sudo tee "$FILE" > /dev/null
    echo "Created file: $FILE"
done

# უფლებების შეცვლა, რომ gita-მ წვდომა ჰქონდეს
sudo chown -R gita:gita "$HOMEDIR"

echo "Script execution completed successfully!"

