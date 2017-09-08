## NG Case

```
.
|-- 0.sh
|-- 1.sh -> 0.sh
`-- testting.dig
```

```
digdag download case1_symlink_first
2017-09-08 22:17:45 +0900: Digdag v0.9.16
  case1_symlink_first/0.sh -> 1.sh
error: /private/tmp/tt/case1_symlink_first/0.sh (no such file)
```

## OK Case

```
.
|-- 0.sh -> ./1.sh
|-- 1.sh
`-- testting.dig
```

```
digdag download case2_symlink_behind
2017-09-08 22:18:34 +0900: Digdag v0.9.16
  case2_symlink_behind/0.sh
  case2_symlink_behind/1.sh -> 0.sh
  case2_symlink_behind/testting.dig
Extracted project 'case2_symlink_behind' revision '71832803-3db0-47e7-9d79-a3bfcf676422' to case2_symlink_behind.
```
