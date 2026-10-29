import RiscvZkvm.Rv64.ZiskAccel
import Guest.ByteCodec

/-!
# Accelerators as ordinary foreign calls

CakeML's foreign-call interface is narrow: `@name(c, n, a, m)` hands the callee
the `n` configuration bytes at `c` and the `m` array bytes at `a`, and the callee
may replace the array bytes. The result must be a function of those bytes alone,
and nothing else in memory may change. A call that fits can be specified as a
function of two byte lists, with no access to memory, addresses or the rest of the
machine.

The ZisK accelerators were first modelled the other way (`Guest.Accel`): the
stub's `a0` points to a parameter block of pointers, the hardware follows them to
operands anywhere in memory, and the effect is a transformation of Pancake memory.
That is a target extension, outside the foreign-call interface.

Every accelerator is now an ordinary foreign call with an empty configuration. The
Pancake side lays out each call's operands and results at fixed offsets in one block and
passes it as the array; the stub in `guest/runtime/start.S` builds the pointer block the
CSR expects from the array pointer. So the array holds no addresses, and the effect is a
function of its bytes alone: the specification needs no base address, and there is no
obligation on the caller beyond passing an array of the right length (a call with any
other shape is a failed call).

| call | array (words, in order) |
| --- | --- |
| `keccakf` | the 25-word state |
| `sha256f` | the 4-word packed state, the 8-word block |
| `arith256mod`, `bn_arith256`, `bls_arith384` | `a, b, c, m, d`, each 4 words (6 for `bls_arith384`) |
| `secpadd`, `bn_g1_add`, `bls_g1_add` | `p1, p2`, each a point (8 words, 12 for BLS) |
| `secpdbl`, `bn_g1_dbl`, `bls_g1_dbl` | the point, doubled in place |
| `bn_fp2_*`, `bls_fp2_*` | `f1, f2`, each an element (8 words, 12 for BLS) |
| `blake2bround` | the SIGMA row (a value), the 16-word state, the 16-word message |
-/

namespace Guest

open RiscvZkvm.Rv64

/-! ### The specifications -/

/-- Exactly `n` words from `bytes`, and no configuration. -/
def exactWords (configuration bytes : List UInt8) (n : Nat) : Option (List Word) :=
  if configuration.length = 0 ∧ bytes.length = 8 * n then some (wordsOfLeBytes bytes)
  else none

/-- `@keccakf`: Keccak-f[1600] on the 25-word array (CSR 0x800). -/
def keccakfBytes (configuration bytes : List UInt8) : Option (List UInt8) :=
  (exactWords configuration bytes 25).map fun state =>
    leBytesOfWords (Accel.keccakF state)

/-- `@sha256f`: one SHA-256 compression of the 8-word block into the 4-word packed
state (CSR 0x805). -/
def sha256fBytes (configuration bytes : List UInt8) : Option (List UInt8) :=
  (exactWords configuration bytes 12).map fun words =>
    leBytesOfWords (Accel.u32sToDwords (Accel.sha256Compress
      (Accel.dwordsToU32s (words.take 4)) (Accel.dwordsToU32sBE (words.drop 4)))) ++
    bytes.drop 32

/-- `d := (a·b + c) mod m` over `limbs`-limb operands (CSRs 0x802, 0x80b). -/
def arithModBytes (limbs : Nat) (configuration bytes : List UInt8) : Option (List UInt8) := do
  let words ← exactWords configuration bytes (5 * limbs)
  let a := words.take limbs
  let b := (words.drop limbs).take limbs
  let c := (words.drop (2 * limbs)).take limbs
  let m := (words.drop (3 * limbs)).take limbs
  let modulus := Accel.leLimbsToNat m
  if modulus = 0 then none
  else
    pure (leBytesOfWords (words.take (4 * limbs) ++ Accel.natToLeLimbs limbs
      (Accel.arith256Mod (Accel.leLimbsToNat a) (Accel.leLimbsToNat b)
        (Accel.leLimbsToNat c) modulus)))

/-- `p1 := p1 + p2` by the chord formula (CSRs 0x803, 0x806, 0x80c). -/
def curveAddBytes (prime limbs : Nat) (configuration bytes : List UInt8) :
    Option (List UInt8) := do
  let words ← exactWords configuration bytes (4 * limbs)
  let pt1 := words.take (2 * limbs)
  let pt2 := words.drop (2 * limbs)
  if Accel.ptValid prime limbs pt1 && Accel.ptValid prime limbs pt2 &&
      !(Accel.leLimbsToNat (pt1.take limbs) == Accel.leLimbsToNat (pt2.take limbs)) then
    pure (leBytesOfWords (Accel.curveAddL prime limbs pt1 pt2 ++ pt2))
  else none

/-- The point in the array doubled in place by the tangent formula (CSRs 0x804,
0x807, 0x80d). -/
def curveDblBytes (prime limbs : Nat) (configuration bytes : List UInt8) :
    Option (List UInt8) := do
  let pt ← exactWords configuration bytes (2 * limbs)
  if Accel.ptValid prime limbs pt && !(Accel.leLimbsToNat (pt.drop limbs) == 0) then
    pure (leBytesOfWords (Accel.curveDblL prime limbs pt))
  else none

/-- `f1 := f1 ∘ f2` in Fp2 (CSRs 0x808–0x80a, 0x80e–0x810). -/
def complexBytes (op : Nat → Nat → List Word → List Word → List Word)
    (prime limbs : Nat) (configuration bytes : List UInt8) : Option (List UInt8) := do
  let words ← exactWords configuration bytes (4 * limbs)
  let a := words.take (2 * limbs)
  let b := words.drop (2 * limbs)
  if Accel.ptValid prime limbs a && Accel.ptValid prime limbs b then
    pure (leBytesOfWords (op prime limbs a b ++ b))
  else none

/-- One BLAKE2b round (CSR 0x819): the array is the SIGMA row, a value and not a
pointer, then the 16-word state and the 16-word message; the state is replaced. -/
def blake2bBytes (configuration bytes : List UInt8) : Option (List UInt8) := do
  let words ← exactWords configuration bytes 33
  match words with
  | index :: rest =>
      let state := rest.take 16
      let input := rest.drop 16
      if index.toNat < 10 then
        pure (leBytesOfWords (index :: Accel.blake2bRound index.toNat state input ++ input))
      else none
  | [] => none

/-- Every accelerator by the guest's `@name`. -/
def acceleratorBytes (name : String) (configuration bytes : List UInt8) :
    Option (List UInt8) :=
  match name with
  | "keccakf" => keccakfBytes configuration bytes
  | "sha256f" => sha256fBytes configuration bytes
  | "arith256mod" | "bn_arith256" => arithModBytes 4 configuration bytes
  | "bls_arith384" => arithModBytes 6 configuration bytes
  | "secpadd" => curveAddBytes Accel.secpP 4 configuration bytes
  | "secpdbl" => curveDblBytes Accel.secpP 4 configuration bytes
  | "bn_g1_add" => curveAddBytes Accel.bn254P 4 configuration bytes
  | "bn_g1_dbl" => curveDblBytes Accel.bn254P 4 configuration bytes
  | "bn_fp2_add" => complexBytes Accel.complexAddL Accel.bn254P 4 configuration bytes
  | "bn_fp2_sub" => complexBytes Accel.complexSubL Accel.bn254P 4 configuration bytes
  | "bn_fp2_mul" => complexBytes Accel.complexMulL Accel.bn254P 4 configuration bytes
  | "bls_g1_add" => curveAddBytes Accel.bls12P 6 configuration bytes
  | "bls_g1_dbl" => curveDblBytes Accel.bls12P 6 configuration bytes
  | "bls_fp2_add" => complexBytes Accel.complexAddL Accel.bls12P 6 configuration bytes
  | "bls_fp2_sub" => complexBytes Accel.complexSubL Accel.bls12P 6 configuration bytes
  | "bls_fp2_mul" => complexBytes Accel.complexMulL Accel.bls12P 6 configuration bytes
  | "blake2bround" => blake2bBytes configuration bytes
  | _ => none

end Guest
