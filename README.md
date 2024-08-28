# SymmetricTree-swift

This is better as there are more leaves than nodes.
<code>
        if t1 == nil && t2 == nil { return true }
        if t1 == nil || t2 == nil { return false }
</code>

|b\a|0|1|
|-|-|-|
|0|2|3|
|1|3|3|

If not, this is better.
<code>
        if root.left == nil || root.right == nil {
            return root.left == nil && root.right == nil
        }
</code>

|b\a|0|1|
|-|-|-|
|0|3|3|
|1|3|2|
