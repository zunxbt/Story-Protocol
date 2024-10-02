import pinataSDK from '@pinata/sdk';

export async function uploadJSONToIPFS(jsonMetadata: object): Promise<string> {
    const pinata = new pinataSDK({ pinataJWTKey: process.env.PINATA_JWT });
    const { IpfsHash } = await pinata.pinJSONToIPFS(jsonMetadata);
    return IpfsHash;
}