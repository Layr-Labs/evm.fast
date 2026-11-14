import InitECandidate.Solver.MemSafe.MptTightCost.Root

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option linter.unusedVariables false

/-!
# `node_hash` and `mpt_root` with a null-range root (Band7)

The memory-safety summaries accept a root in the null range (`Fits nodeU`: a value below `nullMax`), and the
first load of `node_hash` then leaves the memory domain, so no run through it is `Good`. `NhPre7`, `MrPre7`
add that case to `NrPre` / `MrPre`, and the costs are those of `Band2`.
-/

namespace InitECandidate.Solver.MemSafe.MptTightCost.Seven
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe (Ptrs ptrsOf heapBase State rd nullMax)
open InitECandidate.Solver.Band InitECandidate.Solver.MemSafe.MptTightCost.Mpt
open InitECandidate.Solver.Spec.Mpt (TrieOK)

variable {σ : Type}

/-- A load at a null-range base plus a small offset leaves the memory domain. -/
theorem ld_small {s : State σ} (hs : InCtx s guestCtx) {x : MlS} {k : Nat} {nd : BitVec 64} {v : ValueHOL 64}
    (hn : s.locals.lookup x = some (.val (.word nd)))
    (h : ev s (.load .one (.op .add [lv x, cw k])) = some v) (hk : k < 1000) : nullMax ≤ nd.toNat := by
  obtain ⟨w, hw, hd, -⟩ := MemSafe.Struct.ev_load1_inv h
  rw [ev_add_cw hn k] at hw
  cases hw
  have hns := MemSafe.nullSafe_guestCtx (nd + BitVec.ofNat 64 k) (by rw [← hs.2.1]; exact hd)
  rw [BitVec.toNat_add, BitVec.toNat_ofNat] at hns
  unfold heapBase at hns
  unfold nullMax
  have := nd.isLt
  by_contra hlt
  rw [Nat.mod_eq_of_lt (by omega)] at hns
  omega

def NhPre7 (vs : List (ValueHOL 64)) (s : State σ) : Prop :=
  NrPre vs s ∨ ∃ nd : BitVec 64, vs = [.val (.word nd)] ∧ nd.toNat < nullMax

theorem node_hash7_costP : Inv.CalleeCostP σ guestCtx (nm "node_hash") NhPre7 nhB := by
  intro vs body callee rs hl
  rw [guestCtx_code] at hl
  obtain ⟨rfl, -, -, hbind⟩ := MemSafe.lookupCode_gen code_nh hl
  unfold nhBody nhB
  refine Inv.costP_dec fun s hs ⟨hloc, hpre⟩ v hv _ => ?_
  rcases hpre with ⟨nd, hvs, p, hp, hord, Nd, hT, hNd⟩ | ⟨nd, hvs, hsm⟩
  swap
  · exfalso
    subst hvs
    have hA := (hbind 0 (by decide) (by simp)).1
    have hn0 : s.locals.lookup (nm "node") = some (.val (.word nd)) := by rw [hloc]; exact hA
    have := ld_small hs hn0 hv (k := 24) (by decide)
    omega
  subst hvs
  have hA := (hbind 0 (by decide) (by simp)).1
  have hn : (setVarHOLFinite (nm "cached") v s).locals.lookup (nm "node") =
      some (.val (.word nd)) := by
    rw [lk_set_ne _ _ (by decide), hloc]; exact hA
  refine Inv.costP_seq (R := fun u => u = setVarHOLFinite (nm "cached") v s)
    (Inv.costP_of_cost (cost_ite (cost_return _) cost_skip))
    (hoare_ite (hoare_return fun _ _ _ _ _ h => by cases h)
      (hoare_skip fun u _ hu _ => hu.1)) ?_
  refine costP_decCall node_rlp_costP ?_ (funSpec_true _) ?_
  · rintro u _ rfl vs' hvs' callee'
    rw [evs_cons (by rw [ev_lv]; exact hn) evs_nil] at hvs'
    cases hvs'
    exact ⟨nd, rfl, p, hp, hord, Nd, hT, hNd⟩
  · intro u _ _ _ _ _ _ _ _ _ _
    exact Inv.costP_of_cost (cost_decCall
      (MemSafe.Wire.calleeCost_guest (f := nm "alloc") (B := 2) rfl)
      (cost_seq (cost_call (InitECandidate.Solver.MemSafe.SeqCost.Callers.cc_keccak256)
        (by intro _ _ _ _ h; cases h)) (cost_seq (cost_store _ _) (cost_return _))))

def MrPre7 (vs : List (ValueHOL 64)) (s : State σ) : Prop :=
  ∃ (m : BitVec 64) (out : ValueHOL 64), vs = [.val (.word m), out] ∧ ∃ p : Ptrs,
    ptrsOf s = some p ∧ p.Ordered ∧ ∃ Nd, TrieOK s Nd p.hp ∧
      (rd s.memory m = 0 ∨ Nd (rd s.memory m) ∨ (rd s.memory m).toNat < nullMax)

theorem mpt_root7_costP : Inv.CalleeCostP σ guestCtx (nm "mpt_root") MrPre7 mrB := by
  intro vs body callee rs hl
  rw [guestCtx_code] at hl
  obtain ⟨rfl, -, -, hbind⟩ := MemSafe.lookupCode_gen code_mr hl
  unfold mrBody mrB
  refine Inv.costP_dec fun s hs ⟨hloc, m, out, hvs, p, hp, hord, Nd, hT, hroot⟩ v hv _ => ?_
  subst hvs
  have hA := (hbind 0 (by decide) (by simp)).1
  have hm : s.locals.lookup (nm "m") = some (.val (.word m)) := by rw [hloc]; exact hA
  have hvv := ev_lds_lv (x := nm "m") (k := 0) hm hv
  subst hvv
  have hr : (setVarHOLFinite (nm "root") (.val (.word (rd s.memory (m + BitVec.ofNat 64 0)))) s
      ).locals.lookup (nm "root") = some (.val (.word (rd s.memory (m + BitVec.ofNat 64 0)))) :=
    lk_set_self _ _ _
  refine Inv.costP_seq
    (R := fun u => u = setVarHOLFinite (nm "root")
        (.val (.word (rd s.memory (m + BitVec.ofNat 64 0)))) s ∧
      ev u (.cmp .equal (lv (nm "root")) (cw 0)) = some (.val (.word 0)))
    (Inv.costP_of_cost (cost_ite (cost_seq (cost_call
      (ccCopy)
      (by intro _ _ _ _ h; cases h)) (cost_return _)) cost_skip))
    (hoare_ite (hoare_seq (R := fun _ _ => True)
        (hoare_callD (funSpec_true _) (fun _ _ _ _ _ _ _ _ _ _ => trivial))
        (fun r t _ hr _ _ h => absurd h hr) (hoare_return fun _ _ _ _ _ h => by cases h))
      (hoare_skip fun u _ hu _ => ⟨hu.1, hu.2⟩)) ?_
  refine costP_decCall node_hash7_costP ?_ (funSpec_true _) ?_
  · rintro u _ ⟨rfl, hc⟩ vs' hvs' callee'
    obtain ⟨x', y', hx', hy', hxy⟩ := cmp_false hc
    rw [ev_lv] at hx'
    rw [hr] at hx'
    cases hx'
    rw [ev_cw] at hy'
    cases hy'
    have hx0 := Spec.equal_false hxy
    rw [evs_cons (by rw [ev_lv]; exact hr) evs_nil] at hvs'
    cases hvs'
    rcases hroot with h | h | h
    · exfalso; apply hx0; simpa using h
    · exact Or.inl ⟨_, rfl, p, hp, hord, Nd, hT, by simpa using h⟩
    · exact Or.inr ⟨_, rfl, by simpa using h⟩
  · intro u _ _ _ _ _ _ _ _ _ _
    exact Inv.costP_of_cost (cost_seq (cost_call
      (ccCopy)
      (by intro _ _ _ _ h; cases h)) (cost_return _))

end InitECandidate.Solver.MemSafe.MptTightCost.Seven

#print axioms InitECandidate.Solver.MemSafe.MptTightCost.Seven.node_hash7_costP
#print axioms InitECandidate.Solver.MemSafe.MptTightCost.Seven.mpt_root7_costP
