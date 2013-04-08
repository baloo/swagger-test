module.exports =
    httpMethod: "DELETE"
    nickname: "UserKeyDelete"
    summary: "Remove an SSH key from this account"
    parameters: [
        paramType: "path"
        required: true
        name: "key"
        dataType: "String"
        description: "the username@hostname description field of the key"
        allowMultiple: false
    ]



