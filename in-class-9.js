function containsPinecone(sentence) {
    return sentence.toLowerCase().includes("pinecone");
}

const sentences = [
    "Hello, my name is Mahir.",
    "I found a pinecone on the ground while hiking.",
    "There are many birds in the sky chirping.",
    "Pinecones are beautiful and I like them.",
    "The weather is beautiful today.",
    "I want to go biking.",
    "I am hungry for a pinecone."
];

const pineconeSentences = sentences.filter(containsPinecone);

console.log(pineconeSentences);
