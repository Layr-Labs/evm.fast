import InitECandidate.Solver.Spec.Mpt.Leaves.Nodedb
import InitECandidate.Solver.MemSafe.Hooks.RecWs

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# `nodedb_lookup` returns the slice of a reachable leaf (stage 2b)

`funSpec_nodedb_lookup_leaf`: a found result `<a, b, c>` (`a ≠ 0`) of `nodedb_lookup(T, h)` has
`<b, c>` = the slice record at `LEFT(leaf)` of a leaf `leaf` reachable from the root (`Hooks.Rch`).
With `NdbR` this gives `VInR tVAL` for `<b, c>` (`vin_of_lookup`).
-/

namespace InitECandidate.Solver.MemSafe.Dn
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.Spec.Mpt.Leaves

variable {σ : Type} {X : Ctx 64}

def NlLeaf (m : MemSafe.Mem) (T : BitVec 64) (v : ValueHOL 64) : Prop :=
  ∀ a b c : BitVec 64, v = .rStruct [.val (.word a), .val (.word b), .val (.word c)] →
    (a ≠ 0 → ∃ leaf, Hooks.Rch m T leaf ∧ leaf ≠ 0 ∧ Inv.KIND m T leaf = Inv.KB m T ∧
      b = MemSafe.rd m (Inv.LEFT m T leaf) ∧ c = MemSafe.rd m (Inv.LEFT m T leaf + BitVec.ofNat 64 8)) ∧
    (a = 0 → c = 0)

theorem funSpec_nodedb_lookup_leaf (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "nodedb_lookup") (fun vs s r _ => ∀ v, r = .returned v →
      ∀ (T : BitVec 64) (b : ValueHOL 64), vs = [.val (.word T), b] → NlLeaf s.memory T v) := by
  refine FunSpec.mono (funSpec_of_hoare (R := fun vs s v _ => ∀ (T : BitVec 64) (b : ValueHOL 64),
      vs = [.val (.word T), b] → NlLeaf s.memory T v) ?_) fun _ _ _ _ h => h
  intro vs body callee rs hl s0 _ hloc
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, rfl, hsA, hsB, hA, hB⟩ := lookupCode_two code_nodedb_lookup (by decide) hl
  obtain ⟨T, rfl⟩ := val_of_shapeEq_one hsA
  obtain ⟨K, rfl⟩ := val_of_shapeEq_one hsB
  have hld : s0.locals.lookup (nm "db") = some (.val (.word T)) := by rw [hloc]; exact hA
  have hlh : s0.locals.lookup (nm "hash") = some (.val (.word K)) := by rw [hloc]; exact hB
  refine hoare_conseq (Q := fun r _ => ∀ v, r = some (.returned v) → NlLeaf s0.memory T v) ?_
    (fun _ _ h => h) fun r t _ _ h v hv T' b' hvs => by
    simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hvs
    obtain ⟨rfl, -⟩ := hvs
    exact h v hv
  refine hoare_decCallL ((funSpec_htab_get_ret (σ := σ) hC).and (ndb_mw hC htab_get_mem))
    (fun _ _ _ h => h) fun s _ hs0 avs havs callee' v st ⟨hR, hm⟩ _ hsh => ?_
  subst hs0
  rw [evs_cons (ev_lv' hld) (evs_cons (ev_lv' hlh) evs_nil)] at havs
  simp only [Option.some.injEq] at havs
  subst havs
  obtain ⟨ws, hws, rfl⟩ := eq_wv_of_shapeEq' (k := 2) hsh
  match ws, hws with
  | [x, y], _ =>
  have hG := hR (wv [x, y]) rfl T K rfl
  have hm' : st.memory = s.memory := hm
  set t1 := setVarHOLFinite (nm "r") (wv [x, y]) { st with locals := s.locals }
  have hr1 : t1.locals.lookup (nm "r") = some (.rStruct [.val (.word x), .val (.word y)]) :=
    lk_set_self _ _ _
  refine hoare_pre (P := fun t => t.locals.lookup (nm "r") =
      some (.rStruct [.val (.word x), .val (.word y)]) ∧ t.memory = s.memory) ?_
    fun t _ ht => by subst ht; exact ⟨hr1, hm'⟩
  refine hoare_retGuard (fun t _ _ v hv => fun w hw => ?_) ?_
  · simp only [Option.some.injEq, PanSemResultExact.returned.injEq] at hw
    subst hw
    intro a b c hv'
    rw [ev_rstruct (evs_cons (ev_cw _ 0) (evs_cons (ev_cw _ 0) (evs_cons (ev_cw _ 0) evs_nil)))] at hv
    rw [← Option.some.inj hv] at hv'
    simp only [ValueHOL.rStruct.injEq, List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq,
      and_true] at hv'
    exact ⟨fun ha => absurd hv'.1.symm ha, fun _ => hv'.2.2.symm⟩
  refine hoare_return fun t _ ⟨⟨j1, j2⟩, hc⟩ v hv => fun w hw => ?_
  simp only [Option.some.injEq, PanSemResultExact.returned.injEq] at hw
  subst hw
  intro a b c hv'
  have hx0 : x ≠ 0 := by
    obtain ⟨x', y', hx', hy', hxy⟩ := cmp_false hc
    rw [Spec.Mpt.Dec.ev_rfield_w j1 (by rfl)] at hx'
    rw [ev_cw] at hy'
    cases hx'; cases hy'
    exact Spec.equal_false hxy
  obtain ⟨leaf, hwk, hl0, rfl⟩ := hG x y rfl hx0
  obtain ⟨vs, rfl, hvs⟩ := ev_rstruct_inv hv
  obtain ⟨v1, vs1, rfl, h1, hvs1⟩ := evs_cons_inv hvs
  obtain ⟨v2, vs2, rfl, h2, hvs2⟩ := evs_cons_inv hvs1
  obtain ⟨v3, vs3, rfl, h3, hvs3⟩ := evs_cons_inv hvs2
  simp only [ValueHOL.rStruct.injEq, List.cons.injEq] at hv'
  obtain ⟨h1', rfl, rfl, -⟩ := hv'
  rw [ev_cw] at h1
  simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at h1
  obtain ⟨w2, hw2, -, hv2⟩ := ev_load1_inv' h2
  rw [Spec.Mpt.Dec.ev_rfield_w j1 (by rfl)] at hw2
  obtain ⟨w3, hw3, -, hv3⟩ := ev_load1_inv' h3
  rw [ev_add2 (Spec.Mpt.Dec.ev_rfield_w j1 (by rfl)) (ev_cw _ 8)] at hw3
  simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hw2 hv2 hw3 hv3
  subst hw2 hv2 hw3 hv3
  rw [j2]
  obtain ⟨hSl, hk⟩ := walk_S (S := Hooks.Rch s.memory T)
    (fun n hn hn0 hk => ⟨Hooks.Rch.left hn hn0 hk, Hooks.Rch.right hn hn0 hk⟩) hwk Hooks.Rch.root hl0
  exact ⟨fun _ => ⟨leaf, hSl, hl0, hk, rfl, rfl⟩, fun h0 => by
    rw [h1'] at h1
    simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at h1
    rw [← h1] at h0
    exact absurd h0 (by decide)⟩

/-- A found lookup result lies in a `tVAL` object, given the node DB's `NdbR`. -/
theorem vin_of_lookup {Γ : Gam} {m : MemSafe.Mem} {T : BitVec 64} (hN : Hooks.NdbR Γ m T)
    {v : ValueHOL 64} (hv : NlLeaf m T v) {a b c : BitVec 64}
    (h : v = .rStruct [.val (.word a), .val (.word b), .val (.word c)]) :
    Hooks.VInR Types.tVAL Γ b c := by
  by_cases ha : a = 0
  · exact Or.inl ((hv a b c h).2 ha)
  · obtain ⟨leaf, hr, hl0, hk, rfl, rfl⟩ := (hv a b c h).1 ha
    exact (((hN.2.2.2 leaf hr hl0).2.2.1 hk).2)

end InitECandidate.Solver.MemSafe.Dn

#print axioms InitECandidate.Solver.MemSafe.Dn.funSpec_nodedb_lookup_leaf
#print axioms InitECandidate.Solver.MemSafe.Dn.vin_of_lookup
