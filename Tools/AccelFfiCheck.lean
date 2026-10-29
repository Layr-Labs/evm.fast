import Guest.Accel
import Guest.AccelFfi

/-!
`lake exe accel-ffi-check`: the byte-level accelerator specifications of
`Guest.AccelFfi` against independent reference values and against the word-memory
reference semantics.

* `keccakfBytes`: absorbing the SHA3-256 padding block of the empty message into a
  zero state and applying Keccak-f gives the SHA3-256 digest of the empty message in
  the first 32 bytes.
* `sha256fBytes`: one compression of the padded block of `"abc"` from the SHA-256
  initial state gives SHA-256("abc"), in the packed state layout the guest uses
  (eight 32-bit words, two per little-endian 64-bit cell).
* malformed shapes are rejected (a non-empty configuration, a wrong array length);
* every other accelerator: the specification agrees with `Guest.acceleratorEffect` (the
  transcription of ZisK's `csrsWrite` over word memory) on concrete vectors, failures
  included. The reference follows pointers, so it is given the pointer block the stub in
  `guest/runtime/start.S` builds from the array address.
-/

open Guest Flapjack RiscvZkvm.Rv64

def hex (bytes : List UInt8) : String :=
  String.join (bytes.map fun b =>
    let n := b.toNat
    String.ofList [Nat.digitChar (n / 16), Nat.digitChar (n % 16)])

def check (name : String) (ok : Bool) : IO Bool := do
  IO.println s!"{if ok then "PASS" else "FAIL"}  {name}"
  pure ok

/-! ### Reference values -/

def referenceChecks : IO Bool := do
  let mut ok := true
  -- keccakf: SHA3-256("") from the padded first block
  let block := (0x06 :: List.replicate 134 0x00) ++ [0x80] ++ List.replicate 64 0x00
  let sha3empty := "a7ffc6f8bf1ed76651c14756a061d662f580ff4de43b49fa82d80a4b80f8434a"
  ok := (← check "keccakf: SHA3-256 of the empty message" (
    match keccakfBytes [] block with
    | some out => out.length = 200 && hex (out.take 32) = sha3empty
    | none => false)) && ok
  ok := (← check "keccakf: rejects a non-empty configuration" (
    (keccakfBytes [0] block).isNone)) && ok
  ok := (← check "keccakf: rejects a short array" (
    (keccakfBytes [] (block.take 192)).isNone)) && ok
  -- sha256f: SHA-256("abc")
  let iv : List Nat := [0x6a09e667, 0xbb67ae85, 0x3c6ef372, 0xa54ff53a,
    0x510e527f, 0x9b05688c, 0x1f83d9ab, 0x5be0cd19]
  let packed : List Word := [0, 1, 2, 3].map fun i =>
    BitVec.ofNat 64 (iv[2 * i]! + iv[2 * i + 1]! * 2 ^ 32)
  let msg : List UInt8 := [0x61, 0x62, 0x63, 0x80] ++ List.replicate 59 0x00 ++ [0x18]
  let arr := leBytesOfWords packed ++ msg
  let digest := "ba7816bf8f01cfea414140de5dae2223b00361a396177a9cb410ff61f20015ad"
  ok := (← check "sha256f: SHA-256 of \"abc\"" (
    match sha256fBytes [] arr with
    | some out =>
        out.length = 96 && out.drop 32 = msg &&
        -- unpack the eight words (two per cell, low half first) and print them big-endian
        hex ((wordsOfLeBytes (out.take 32)).flatMap fun w =>
          let lo := w.toNat % 2 ^ 32
          let hi := w.toNat / 2 ^ 32
          [lo, hi].flatMap fun v => [v / 2 ^ 24 % 256, v / 2 ^ 16 % 256, v / 2 ^ 8 % 256, v % 256].map
            fun n => UInt8.ofNat n) = digest
    | none => false)) && ok
  ok := (← check "sha256f: rejects a non-empty configuration" (
    (sha256fBytes [0] arr).isNone)) && ok
  ok := (← check "sha256f: rejects a short array" (
    (sha256fBytes [] (arr.take 95)).isNone)) && ok
  ok := (← check "sha256f: rejects a long array" (
    (sha256fBytes [] (arr ++ [0])).isNone)) && ok
  return ok

/-! ### Differential check against the word-memory reference -/

def arrayBase : Word := 0xa1000000
def confAddr : Word := 0x10000000

/-- Word memory holding the array at `arrayBase` and a pointer block at `confAddr`. -/
def memoryFor (bytes : List UInt8) (conf : List Word) : Memory :=
  fun a =>
    let off := (a - arrayBase).toNat
    if a.toNat % 8 = 0 ∧ off + 8 ≤ bytes.length then
      match wordsOfLeBytes ((bytes.drop off).take 8) with
      | [w] => some (.word w)
      | _ => none
    else
      let k := (a - confAddr).toNat
      if a.toNat % 8 = 0 ∧ k / 8 < conf.length then some (.word conf[k / 8]!) else none

/-- The array's bytes read back from word memory. -/
def readBack (m : Memory) (length : Nat) : Option (List UInt8) := do
  let words ← (List.range (length / 8)).mapM fun i =>
    match m (arrayBase + BitVec.ofNat 64 (8 * i)) with
    | some (.word w) => some w
    | _ => none
  pure (leBytesOfWords words)

/-- One case. `pointers` is the block the stub builds (the reference reads it from
memory at `confAddr`); when `onArray` the CSR takes the operand's own address, as for
doubling, and the reference is called on the array. -/
def diffCase (name : String) (pointers : List Word) (onArray : Bool) (bytes : List UInt8) :
    IO Bool := do
  let mem := memoryFor bytes pointers
  let reference : Option (List UInt8) :=
    (acceleratorEffect name (if onArray then arrayBase else confAddr) mem).bind
      (readBack · bytes.length)
  let spec := acceleratorBytes name [] bytes
  check s!"{name} (reference and specification agree: {if reference.isSome then "result" else "fails"})"
    (reference == spec)

def limbsOf (limbs n : Nat) : List Word := Accel.natToLeLimbs limbs n

/-- Pointers `arrayBase + offset` for byte offsets. -/
def at' (offsets : List Nat) : List Word := offsets.map fun o => arrayBase + BitVec.ofNat 64 o

def diffChecks : IO Bool := do
  let mut ok := true
  -- arithmetic mod m: 4 and 6 limbs, and a zero modulus
  for (name, limbs) in [("arith256mod", 4), ("bn_arith256", 4), ("bls_arith384", 6)] do
    for m in [Accel.bn254P, 0xffffffffffffffc5, 0] do
      let words := limbsOf limbs (2 ^ 200 + 12345) ++ limbsOf limbs (2 ^ 190 + 777) ++
        limbsOf limbs 99 ++ limbsOf limbs m ++ List.replicate limbs 0
      let s := 8 * limbs
      ok := (← diffCase name (at' [0, s, 2 * s, 3 * s, 4 * s]) false (leBytesOfWords words)) && ok
  -- point addition and doubling on the three curves
  let curves : List (String × String × Nat × Nat × Nat × Nat) := [
    ("secpadd", "secpdbl", Accel.secpP, 4,
      0x79BE667EF9DCBBAC55A06295CE870B07029BFCDB2DCE28D959F2815B16F81798,
      0x483ADA7726A3C4655DA4FBFC0E1108A8FD17B448A68554199C47D08FFB10D4B8),
    ("bn_g1_add", "bn_g1_dbl", Accel.bn254P, 4, 1, 2),
    ("bls_g1_add", "bls_g1_dbl", Accel.bls12P, 6,
      0x17F1D3A73197D7942695638C4FA9AC0FC3688C4F9774B905A14E3A3F171BAC586C55E83FF97A1AEFFB3AF00ADB22C6BB,
      0x08B3F481E3AAA0F1A09E30ED741D8AE4FCF5E095D5D00AF600DB18CB2C04B3EDD03CC744A2888AE40CAA232946C5E7E1)]
  for (addName, dblName, prime, limbs, gx, gy) in curves do
    let g := limbsOf limbs gx ++ limbsOf limbs gy
    let g2 := Accel.curveDblL prime limbs g
    -- doubling in place
    ok := (← diffCase dblName [] true (leBytesOfWords g)) && ok
    -- G + 2G, G + G (same x: fails), and an invalid point
    let bad := limbsOf limbs (prime + 5) ++ limbsOf limbs gy
    for (first, second) in [(g, g2), (g, g), (bad, g2)] do
      ok := (← diffCase addName (at' [0, 16 * limbs]) false
        (leBytesOfWords (first ++ second))) && ok
  -- Fp2 operations
  for (name, prime, limbs) in [("bn_fp2_add", Accel.bn254P, 4), ("bn_fp2_sub", Accel.bn254P, 4),
      ("bn_fp2_mul", Accel.bn254P, 4), ("bls_fp2_add", Accel.bls12P, 6),
      ("bls_fp2_sub", Accel.bls12P, 6), ("bls_fp2_mul", Accel.bls12P, 6)] do
    let a := limbsOf limbs 5 ++ limbsOf limbs (prime - 3)
    let b := limbsOf limbs (prime - 1) ++ limbsOf limbs (2 ^ 100)
    ok := (← diffCase name (at' [0, 16 * limbs]) false (leBytesOfWords (a ++ b))) && ok
    let bad := limbsOf limbs (prime + 1) ++ limbsOf limbs 2
    ok := (← diffCase name (at' [0, 16 * limbs]) false (leBytesOfWords (a ++ bad))) && ok
  -- BLAKE2b round: a valid row and a row that traps
  let state := (List.range 16).map fun i => BitVec.ofNat 64 (0x0123456789abcdef * (i + 1))
  let input := (List.range 16).map fun i => BitVec.ofNat 64 (0xfedcba9876543210 + i)
  for index in [3, 9, 12] do
    let row := BitVec.ofNat 64 index
    ok := (← diffCase "blake2bround" (row :: at' [8, 136]) false
      (leBytesOfWords (row :: state ++ input))) && ok
  return ok

def main : IO UInt32 := do
  let a ← referenceChecks
  let b ← diffChecks
  return if a && b then 0 else 1
