import InitECandidate.Solver.MemSafe.D0.Sd5

/-!
# `set_delegation`: one loop iteration (`sdIter`)
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace InitECandidate.Solver.MemSafe.D0
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Frames

variable {σ : Type}

theorem ev_auth_addr (u : State σ) {I A : BitVec 64}
    (hi : u.locals.lookup (nm "i") = some (.val (.word I)))
    (ha : u.locals.lookup (nm "auths") = some (.val (.word A))) {v : ValueHOL 64}
    (hv : ev u (.op .add [lv (nm "auths"), .panop .mul [lv (nm "i"), cw 120]]) = some v) :
    v = .val (.word (A + I * BitVec.ofNat 64 120)) := by
  obtain ⟨vs, hvs, hmap⟩ := ev_op_some hv
  obtain ⟨p, vs1, rfl, hp, h1⟩ := evs_cons_inv hvs
  obtain ⟨q, vs2, rfl, hq, h2⟩ := evs_cons_inv h1
  rw [evs_zero h2] at hmap
  rw [ev_lv_eq ha] at hp
  obtain ⟨ws, hws, hm⟩ := ev_panop_some hq
  obtain ⟨p1, ws1, rfl, hp1, h3⟩ := evs_cons_inv hws
  obtain ⟨q1, ws2, rfl, hq1, h4⟩ := evs_cons_inv h3
  rw [evs_zero h4] at hm
  rw [ev_lv_eq hi] at hp1
  rw [ev_cw] at hq1
  simp only [Option.some.injEq] at hp hp1 hq1
  subst hp hp1 hq1
  simp [panOpHOL, valueWord] at hm
  subst hm
  simp [wordOpHOL, valueWord] at hmap
  obtain ⟨a, ha', rfl⟩ := hmap
  simp [wordOp] at ha'
  rw [← ha']

/-- An authorization record of `A + 120 * I` fits the array. -/
theorem authArg_of {Γ : Gam} {A N I : BitVec 64} (hSA : Hooks.SubArr Γ A N.toNat tAUTH 120)
    (hIN : I.toNat < N.toNat) :
    ∃ x ∈ Γ, x.ty = tAUTH ∧ x.lo ≤ (A + I * BitVec.ofNat 64 120).toNat ∧
      (A + I * BitVec.ofNat 64 120).toNat + 120 ≤ x.hi := by
  rcases hSA with h | ⟨x, hx, hb, ht, hsz, hhe⟩
  · omega
  · have hhe' : heapEnd < 2 ^ 64 := by decide
    have h1 : (I * BitVec.ofNat 64 120).toNat = I.toNat * 120 := by
      rw [BitVec.toNat_mul, BitVec.toNat_ofNat]
      rw [Nat.mod_eq_of_lt (show 120 < 2 ^ 64 by omega), Nat.mod_eq_of_lt (by nlinarith)]
    have h2 : (A + I * BitVec.ofNat 64 120).toNat = A.toNat + I.toNat * 120 := by
      rw [BitVec.toNat_add, h1, Nat.mod_eq_of_lt (by nlinarith)]
    refine ⟨x, hx, ht, ?_, ?_⟩
    · unfold Obj.lo; rw [hb, h2]; omega
    · unfold Obj.hi; rw [hb, h2]; omega

/-- The names a loop iteration introduces. -/
def iterNames : List MlS :=
  [nm "i", nm "auth", nm "authority", nm "cid", nm "cz", nm "cfit", nm "cid_ok", nm "rec", nm "ok",
    nm "ex", nm "wr", nm "pre", nm "pre_code", nm "delegated_before", nm "is_null", nm "sf",
    nm "code"]

def IterFresh (xs : List (MlS × ValueHOL 64)) : Prop := ∀ n ∈ iterNames, xs.lookup n = none

theorem lk_none_cons {xs : List (MlS × ValueHOL 64)} {n m : MlS} {v : ValueHOL 64}
    (h : xs.lookup n = none) (hne : n ≠ m) : ((m, v) :: xs).lookup n = none := by
  rw [lk_cons_ne hne]; exact h

end InitECandidate.Solver.MemSafe.D0

#print axioms InitECandidate.Solver.MemSafe.D0.ev_auth_addr
#print axioms InitECandidate.Solver.MemSafe.D0.authArg_of
