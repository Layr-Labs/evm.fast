import InitECandidate.Solver.Spec.Inv.HtabFind
import InitECandidate.Solver.Spec.Inv.HtabNewLeaf

/-!
# `htab_set`: certified code

The body of `htab_set` (AST index 138), certified against `guestCode` by `cbv`, split into the
empty-table branch `setA`, the overwrite test `setB`, the search `setC` (first differing bit,
loop `setLoopBody`) and the splice `setSplice`. `bitZ x` is `HT_BIT(key, x) == 0`
(`bitZero = bitZ "b"`), with its inversion `bitZ_inv`.
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option cbv.warning false

namespace InitECandidate.Solver.Spec.Inv
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

/-- `HT_BIT(key, x) == 0` -/
def bitZ (x : String) : ExpHOL 64 :=
  .cmp .equal (.op .and [.shift .lsr (.loadByte (.op .add [lv (nm "key"), .shift .lsr (lv (nm x)) (cw 3)]))
      (.op .sub [cw 7, .op .and [lv (nm x), cw 7]]), cw 1]) (cw 0)

theorem bitZ_b : bitZ "b" = bitZero := rfl

def setLoopBody : ProgHOL 64 :=
  .dec (nm "b") .one (.load .one (nA "n" 24))
    (.seq (.ite (.cmp .notLower (lv (nm "b")) (lv (nm "d"))) .break .skip)
      (.seq (.assign .local (nm "p") (lv (nm "n")))
        (.ite (bitZ "b") (.assign .local (nm "n") (.load .one (nA "n" 8)))
          (.assign .local (nm "n") (.load .one (nA "n" 16))))))

def setLoopCond : ExpHOL 64 := .cmp .notEqual (lv (nm "n")) (cw 0)

/-- The stores of the splice, after `nodes` is reloaded. -/
def setStores : ProgHOL 64 :=
  .seq (.store (nA "ni" 0) (lv (nm "p")))
    (.seq (.store (nA "nl" 0) (lv (nm "ni")))
      (.seq (.store (nA "n" 0) (lv (nm "ni")))
        (.seq (.ite (bitZ "d") (.seq (.store (nA "ni" 8) (lv (nm "nl"))) (.store (nA "ni" 16) (lv (nm "n"))))
                (.seq (.store (nA "ni" 8) (lv (nm "n"))) (.store (nA "ni" 16) (lv (nm "nl")))))
          (.seq (.ite (.cmp .equal (lv (nm "p")) (cw 0)) (.store (tAddr 56) (lv (nm "ni")))
                  (.ite (.cmp .equal (.load .one (nA "p" 8)) (lv (nm "n"))) (.store (nA "p" 8) (lv (nm "ni")))
                    (.store (nA "p" 16) (lv (nm "ni")))))
            (.return (cw 0))))))

def setSplice : ProgHOL 64 :=
  .decCall (nm "nl") .one (nm "htab_new_leaf") [lv (nm "t"), lv (nm "key"), lv (nm "value")]
    (.decCall (nm "ni") .one (nm "htab_new_internal") [lv (nm "t"), lv (nm "d")]
      (.seq (.assign .local (nm "nodes") (tLoad 40)) setStores))

/-- `keys + leaf * stride` -/
def setKey : ExpHOL 64 := .op .add [lv (nm "keys"), .panop .mul [lv (nm "leaf"), lv (nm "stride")]]

def setC : ProgHOL 64 :=
  .decCall (nm "d") .one (nm "htab_first_diff") [lv (nm "key"), setKey, lv (nm "klen")]
    (.dec (nm "nodes") .one (tLoad 40)
      (.dec (nm "p") .one (cw 0)
        (.dec (nm "n") .one (tLoad 56)
          (.seq (.while setLoopCond setLoopBody) setSplice))))

def setB : ProgHOL 64 :=
  .decCall (nm "eq") .one (nm "memeq") [setKey, lv (nm "key"), lv (nm "klen")]
    (.seq (.ite (.cmp .notEqual (lv (nm "eq")) (cw 0))
        (.seq (.store (.op .add [tLoad 40, .panop .mul [lv (nm "leaf"), cw 32], cw 8]) (lv (nm "value")))
          (.return (cw 0)))
        .skip)
      setC)

def setA : ProgHOL 64 :=
  .decCall (nm "nl") .one (nm "htab_new_leaf") [lv (nm "t"), lv (nm "key"), lv (nm "value")]
    (.seq (.store (tAddr 56) (lv (nm "nl"))) (.return (cw 0)))

def setBody : ProgHOL 64 :=
  .dec (nm "klen") .one (tLoad 0)
    (.dec (nm "stride") .one (tLoad 8)
      (.decCall (nm "leaf") .one (nm "htab_find_leaf") [lv (nm "t"), lv (nm "key")]
        (.dec (nm "keys") .one (tLoad 32)
          (.seq (.ite (.cmp .equal (lv (nm "leaf")) (cw 0)) setA .skip) setB))))

def setParams : List (MlS × ShapeHOL) := [(nm "t", .one), (nm "key", .one), (nm "value", .one)]

theorem entry_htab_set : fnEntry Guest.Software.guestFn_htab_set =
    (nm "htab_set", setParams, setBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_htab_set : guestCode (nm "htab_set") = some (setParams, setBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 138) (by decide)) ⟨_, rfl⟩
    entry_htab_set

/-! ## The bit test -/

section inv
variable {σ : Type}

/-- `HT_BIT(key, x) == 0` evaluates to a nonzero word iff the bit is `0` (`kbit = some true`). -/
theorem bitZ_inv {u : PanSemStateFiniteExact 64 σ} {x : String} {key bv w : BitVec 64}
    (hk : u.locals.lookup (nm "key") = some (.val (.word key)))
    (hb : u.locals.lookup (nm x) = some (.val (.word bv)))
    (h : ev u (bitZ x) = some (.val (.word w))) :
    (w ≠ 0 → kbit u.memory u.memaddrs u.be key bv = some true) ∧
      (w = 0 → kbit u.memory u.memaddrs u.be key bv = some false) := by
  obtain ⟨X1, z0, hX1, hz0, hv⟩ := ev_cmp_inv h
  rw [ev_cw] at hz0
  cases hz0
  obtain ⟨S1, one, hS1, hone, hX1v⟩ := ev_and2_inv hX1
  rw [ev_cw] at hone
  cases hone
  simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hX1v
  subst hX1v
  obtain ⟨LB, SA, hLB, hSA, z, hz, hS1v⟩ := ev_shift_inv hS1
  simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hS1v
  subst hS1v
  obtain ⟨addr, haddr, byte, hbyte, hLBv⟩ := ev_loadByte_inv hLB
  simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hLBv
  subst hLBv
  obtain ⟨kx, sh, hkx, hsh, hadv⟩ := ev_add2_inv haddr
  rw [ev_lv, hk] at hkx
  cases hkx
  obtain ⟨bx, three, hbx, hthree, sh', hsh', hshv⟩ := ev_shift_inv hsh
  rw [ev_lv, hb] at hbx
  cases hbx
  rw [ev_cw] at hthree
  cases hthree
  rw [lsr_lt _ (by decide)] at hsh'
  cases hsh'
  simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hshv hadv
  subst hshv hadv
  obtain ⟨seven, a7, hseven, ha7, hSAv⟩ := ev_sub2_inv hSA
  rw [ev_cw] at hseven
  cases hseven
  obtain ⟨bx', seven', hbx', hseven', ha7v⟩ := ev_and2_inv ha7
  rw [ev_lv, hb] at hbx'
  cases hbx'
  rw [ev_cw] at hseven'
  cases hseven'
  simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hSAv ha7v
  subst ha7v
  subst hSAv
  have hx7 : (bv &&& BitVec.ofNat 64 7).toNat ≤ 7 := by
    rw [BitVec.toNat_and]; exact Nat.and_le_right
  have hamt : (BitVec.ofNat 64 7 - (bv &&& BitVec.ofNat 64 7)).toNat < 64 := by bv_omega
  rw [lsr_lt _ hamt] at hz
  cases hz
  have h3 : (BitVec.ofNat 64 3).toNat = 3 := rfl
  rw [h3] at hbyte
  have hkb : kbit u.memory u.memaddrs u.be key bv = some (((BitVec.ofNat 64 byte.toNat >>>
      (BitVec.ofNat 64 7 - (bv &&& BitVec.ofNat 64 7)).toNat) &&& BitVec.ofNat 64 1) ==
        BitVec.ofNat 64 0) := by
    unfold kbit
    rw [hbyte]
    rfl
  rw [hkb]
  simp only [ValueHOL.val.injEq, HolWordLab.word.injEq, Flapjack.Compiler.Encoders.Asm.wordCmpHOL]
    at hv
  subst hv
  by_cases hcv : (((BitVec.ofNat 64 byte.toNat >>>
      (BitVec.ofNat 64 7 - (bv &&& BitVec.ofNat 64 7)).toNat) &&& BitVec.ofNat 64 1) ==
        BitVec.ofNat 64 0) = true
  · simp [hcv]
  · simp only [Bool.not_eq_true] at hcv
    simp [hcv]

end inv

end InitECandidate.Solver.Spec.Inv
