module.exports =
    httpMethod: "POST"
    nickname: "UserKeyList"
    summary: "List SSH keys"
    parameters: [
        paramType: "body"
        required: true
        name: "body"
        dataType: "String"
        description: "the ssh key"
        allowMultiple: false
    ]



