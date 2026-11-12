import InitECandidate.Solver.MemSafe.Ptx.PtL10

/-!
# F3e: loop 2 -- the inner step (two `memcpy` calls)
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Ptx
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry

variable {σ : Type}

/-- The fixed context of loop 2. -/
structure L2C (E : PtE σ) (En0 : Env) (S : FS) (ak nv nkv w : BitVec 64)
    (rp rl : BitVec 64) (buf n : Nat) (CV : List (BitVec 64)) : Prop where
  C0 : Cy E En0 S rp rl buf n CV w
  hnal : En0 (nm "nal") = some (.val (.word nv))
  hak : En0 (nm "al_keys") = some (.val (.word ak))
  hnv : NalOK E nv
  hnkv : nkv.toNat = nsS E.s0.memory (lst0 E) nv.toNat
  hobj : S (Fct.obj ak tVAL (akN nkv.toNat))
  hpp : S (Fct.prop (ak.toNat % 8 = 0 ∧ heapBase ≤ ak.toNat ∧ ak.toNat + akN nkv.toNat ≤ heapEnd))

/-- The inner invariant. -/
def J2 (E : PtE σ) (En0 : Env) (S : FS) (iv kv a2 nsv : BitVec 64) (t : State σ) : Prop :=
  ∃ jv kv' : BitVec 64, jv.toNat ≤ nsv.toNat ∧ kv'.toNat = kv.toNat + jv.toNat ∧
    PA E (LI En0 iv kv' a2 nsv jv) S t

theorem sub_toNat_small {a b : BitVec 64} {n : Nat} (h : a.toNat + 52 * n < 2 ^ 64) (hb : b.toNat = n) :
    (a + b * BitVec.ofNat 64 52).toNat = a.toNat + 52 * n := by
  rw [BitVec.toNat_add, BitVec.toNat_mul]
  simp only [BitVec.toNat_ofNat]
  rw [Nat.mod_eq_of_lt (a := 52) (by norm_num), hb, Nat.mod_eq_of_lt (a := n * 52) (by omega)]
  rw [Nat.mod_eq_of_lt (by omega)]
  omega


theorem nsS_succ (m : Mem) (P : BitVec 64) (j : Nat) :
    nsS m P (j + 1) = nsS m P j + Hooks.accNs m P j := rfl

/-- The bound `kv' + 1 <= nkv` in the inner loop. -/
theorem kv_lt {E : PtE σ} {nv nkv kv nsv kv' jv : BitVec 64} {iv : BitVec 64} (hnv : NalOK E nv)
    (hnkv : nkv.toNat = nsS E.s0.memory (lst0 E) nv.toNat) (hiv : iv.toNat < nv.toNat)
    (hnsv : nsv.toNat = Hooks.accNs E.s0.memory (lst0 E) iv.toNat) (hkv : kv.toNat = nsS E.s0.memory (lst0 E) iv.toNat)
    (hjv : jv.toNat < nsv.toNat) (hk' : kv'.toNat = kv.toNat + jv.toNat) : kv'.toNat + 1 ≤ nkv.toNat := by
  have h1 := nsS_mono E.s0.memory (lst0 E) (show iv.toNat + 1 ≤ nv.toNat by omega)
  rw [nsS_succ] at h1
  omega

end InitECandidate.Solver.MemSafe.Ptx
