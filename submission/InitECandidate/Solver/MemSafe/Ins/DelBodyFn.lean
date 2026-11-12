import InitECandidate.Solver.MemSafe.Ins.DelUnw3

set_option autoImplicit false

/-!
# `_mpt_delete_node_body`: the summary

`DelPre vs s Γ := ∃ N K KL LV, vs = [N, K, KL, LV] ∧ LV <= KL ∧ NIn Γ K KL` (the node argument
fits `nodeU` by `delSig`). Post: `ScrOld`, and the result is null or a node object of `Γ'`.
-/

set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Ins
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn

variable {σ : Type} {X : Ctx 64}

def DelPre (vs : List (ValueHOL 64)) (_ : State σ) (Γ : Gam) : Prop :=
  ∃ N K KL LV : BitVec 64, vs = [.val (.word N), .val (.word K), .val (.word KL), .val (.word LV)] ∧
    LV.toNat ≤ KL.toNat ∧ NIn Γ K KL

theorem unwLoop_G {a : Act σ} (ha : ActOK a guestCtx) {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop}
    (hbody : HoareG σ guestCtx (fun s => UJ a s ∧ CondTrue s dlTopCond) dlUnwind
      (GPJ a (UJ a ) Rv)) :
    HoareG σ guestCtx (UJ a ) (.while dlTopCond dlUnwind) (GPJ a (UJ0 a ) Rv) := by
  refine hoareG_while (fun s h => ?_) ?_ ?_
  · obtain ⟨K, KL, Nd, Lv, G, Res, T, hL, Γ, q, he, hh, hsc, hE⟩ := h
    exact ⟨K, KL, Nd, Lv, G, Res, T, hL, Γ, q, he, heap_congr (s := s) ha.hH rfl rfl rfl rfl hh, hsc, hE⟩
  · refine hoareG_conseq hbody (fun s _ h => h) ?_
    intro r t _ _ h
    have hnab : ∀ r', r = some r' → (r' = .continue ∨ r' = .break) → False := by
      intro r' hr' hcb
      rcases (h.2 r' hr').1 with ⟨v, hv⟩ | ⟨e, v, he⟩ | ⟨e, he⟩
      · rcases hcb with rfl | rfl <;> cases hv
      · rcases hcb with rfl | rfl <;> cases he
      · rcases hcb with rfl | rfl <;> cases he
    refine ⟨fun hr => h.1 hr, fun hc => (hnab _ hc (Or.inl rfl)).elim,
      fun hbk => (hnab _ hbk (Or.inr rfl)).elim, fun r' hr' h1 h2 => ?_⟩
    exact ⟨fun hr => by simp [hr'] at hr, h.2⟩
  · intro s _ h hc
    refine ⟨fun _ => ?_, fun r' h' => by cases h'⟩
    obtain ⟨K, KL, Nd, Lv, G, Res, T, hL, Γ, q, he, hh, hsc, hE⟩ := h
    have hT : s.locals.lookup (nm "top") = some (.val (.word T)) :=
      hL (nm "top", T) (by simp [kvD])
    obtain ⟨x, y, hx, hy, hxy⟩ := cmp_false hc
    rw [ev_lw hT] at hx
    rw [ev_cw] at hy
    cases hx
    cases hy
    have := notEqual_false hxy
    subst this
    exact ⟨K, KL, Nd, Lv, G, Res, hL, Γ, q, he, hh, hsc, hE⟩

/-- One iteration of the unwinding keeps `UJ`. -/
theorem unwBody'_G {vs : List (ValueHOL 64)}
    {s0 : State σ} {Γ0 : Gam} {p0 : Ptrs} (ha : ActOK (aD vs s0 Γ0 p0) guestCtx)
    (hL0 : Layout Types.guestC p0 Γ0) (hsp0 : p0.sp ≤ scratchEnd)
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop} :
    HoareG σ guestCtx (fun s => UJ (aD vs s0 Γ0 p0) s ∧ CondTrue s dlTopCond) dlUnwind
      (GPJ (aD vs s0 Γ0 p0) (UJ (aD vs s0 Γ0 p0) ) Rv) := by
  set a := aD vs s0 Γ0 p0 with hadef
  refine hoareG_pre (P := fun s => ∃ K KL Nd Lv G Res T : BitVec 64, UJv a K KL Nd Lv G Res T s ∧
      CondTrue s dlTopCond) ?_
    (fun s _ ⟨⟨K, KL, Nd, Lv, G, Res, T, h⟩, hc⟩ => ⟨K, KL, Nd, Lv, G, Res, T, h, hc⟩)
  refine hoareG_ex fun K => hoareG_ex fun KL => hoareG_ex fun Nd => hoareG_ex fun Lv =>
    hoareG_ex fun G => hoareG_ex fun Res => hoareG_ex fun T => ?_
  by_cases hT : T = 0
  · exact hoareG_false fun s _ ⟨⟨hL, _⟩, hc⟩ => by
      have hT' : s.locals.lookup (nm "top") = some (.val (.word T)) :=
        hL (nm "top", T) (by simp [kvD])
      have := cmp_true (o := .notEqual) (a := lv (nm "top")) (b := cw 0) (x := T)
        (y := BitVec.ofNat 64 0) (ev_lw hT') (ev_cw s 0) hc
      subst hT
      simp [Flapjack.Compiler.Encoders.Asm.wordCmpHOL] at this
  · exact hoareG_pre (unwBody_G ha hL0 hsp0 (K := K) (KL := KL) (Nd := Nd) (Lv := Lv) (G := G)
      (Res := Res) (T := T) hT) (fun s _ h => h.1)

end InitECandidate.Solver.MemSafe.Ins

#print axioms InitECandidate.Solver.MemSafe.Ins.unwLoop_G
#print axioms InitECandidate.Solver.MemSafe.Ins.unwBody'_G
