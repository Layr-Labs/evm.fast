import InitECandidate.Solver.MemSafe.Mod.KitC

set_option autoImplicit false

/-!
# Ops4: block-kit rules with a generalized function post `QW W`

`Mod.hoareG_seqK / decK / decKH / decCallV` end in the function post `HQa a`. Here the same rules end in
`QW W r t := ∀ r', r = some r' → ¬Abortive r' → W t` for a state predicate `W` with
`hW : HHa a t → W t` and `hWl : W t → W {t with locals := L}`. The abnormal-exit branches apply `hW`.
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false

namespace InitECandidate.Solver.MemSafe.Ops4
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Mod

variable {σ : Type} {X : Ctx 64}

/-- The generalized function post. -/
def QW (W : State σ → Prop) (r : Option (PanSemResultExact 64)) (t : State σ) : Prop :=
  ∀ r', r = some r' → ¬ Abortive r' → W t

structure WOK (a : Act σ) (W : State σ → Prop) : Prop where
  hW : ∀ t, HHa a t → W t
  hWl : ∀ (t : State σ) (L : LocalsH), W t → W { t with locals := L }

theorem qw_of_hqa {a : Act σ} {W : State σ → Prop} (hw : WOK a W) {r : Option (PanSemResultExact 64)}
    {t : State σ} (h : HQa a r t) : QW W r t := fun r' hr hna => hw.hW t (h r' hr hna)

theorem qw_locals {a : Act σ} {W : State σ → Prop} (hw : WOK a W) {r : Option (PanSemResultExact 64)}
    {t : State σ} (L : LocalsH) (h : QW W r t) : QW W r { t with locals := L } :=
  fun r' hr hna => hw.hWl t L (h r' hr hna)

theorem hoareG_seqKW {a : Act σ} {W : State σ → Prop} (hw : WOK a W) {P : State σ → Prop} {K : Nat}
    {MK : BitVec 64} {L : LocalsH → Prop} {c k : ProgHOL 64} (hc : HoareG σ X P c (SPK a K MK L))
    (hk : HoareG σ X (PK a K MK L) k (QW W)) : HoareG σ X P (.seq c k) (QW W) :=
  hoareG_seq hc (fun r t _ hr _ h => qw_of_hqa hw (spk_hqa h))
    (hoareG_pre hk fun _ _ h => ⟨(h.1 rfl).1, (h.1 rfl).2⟩)

theorem hoareG_decKW {a : Act σ} {W : State σ → Prop} (hw : WOK a W) (hH : HooksLawful a.C a.H)
    {K : Nat} {MK : BitVec 64} {L L' : LocalsH → Prop} {n : MlS} {sh : ShapeHOL} {e : ExpHOL 64}
    {k : ProgHOL 64}
    (h : ∀ s : State σ, InCtx s X → L s.locals → ∀ v, ev s e = some v →
      L' (setVarHOLFinite n v s).locals)
    (hk : HoareG σ X (PK a K MK L') k (QW W)) :
    HoareG σ X (PK a K MK L) (.dec n sh e k) (QW W) := by
  refine hoareG_dec fun s hs ⟨hL, hK⟩ v hv _ => ?_
  refine hoareG_conseq hk (fun t _ ht => ?_) (fun r t _ _ hq => qw_locals hw _ hq)
  subst ht
  exact ⟨h s hs hL v hv, hk_congr hH (s := s) rfl rfl rfl rfl hK⟩

theorem hoareG_decKHW {a : Act σ} {W : State σ → Prop} (hw : WOK a W) (hH : HooksLawful a.C a.H)
    {K : Nat} {MK : BitVec 64}
    {L : LocalsH → Prop} {L' : ValueHOL 64 → LocalsH → Prop} {Fct : ValueHOL 64 → Prop}
    {n : MlS} {sh : ShapeHOL} {e : ExpHOL 64} {k : ProgHOL 64}
    (h : ∀ s : State σ, InCtx s X → L s.locals → HK a K MK s → ∀ v, ev s e = some v →
      Fct v ∧ L' v (setVarHOLFinite n v s).locals)
    (hk : ∀ v, Fct v → HoareG σ X (PK a K MK (L' v)) k (QW W)) :
    HoareG σ X (PK a K MK L) (.dec n sh e k) (QW W) := by
  refine hoareG_dec fun s hs ⟨hL, hK⟩ v hv _ => ?_
  obtain ⟨hF, hL'⟩ := h s hs hL hK v hv
  refine hoareG_conseq (hk v hF) (fun t _ ht => ?_) (fun r t _ _ hq => qw_locals hw _ hq)
  subst ht
  exact ⟨hL', hk_congr hH (s := s) rfl rfl rfl rfl hK⟩

theorem hoareG_decCallVW {a : Act σ} {W : State σ → Prop} (hw : WOK a W) (ha : ActOK a X)
    {f rn : MlS} {sh : ShapeHOL}
    {args : List (ExpHOL 64)} {k : ProgHOL 64} {sg' : Sig}
    {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    (hf : SumSpecA σ X a.Cb a.H f sg' Pre (fun _ _ _ _ => False) (fun _ _ _ _ _ _ => True))
    {R' : List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop}
    (hf' : FunSpec σ X f R') (hgw : ∀ g ∈ sg'.gw, g ∈ a.sg.gw) (hgrf : sg'.grows = false)
    {K : Nat} {MK : BitVec 64} {L : LocalsH → Prop} {L' : ValueHOL 64 → LocalsH → Prop}
    {Fct : ValueHOL 64 → Prop}
    (hargs : ∀ s : State σ, InCtx s X → L s.locals → ∀ Γ p, Ext a.Γ0 Γ → Heap a Γ p s → K ≤ p.hp →
      ∀ vs, evs s args = some vs →
        ArgsOK a.Cb Γ p sg'.params vs ∧ (∀ x, ArgCells sg'.params vs x → a.Foot x) ∧
          ∀ s' : State σ, Pre vs s' Γ)
    (hret : ∀ s : State σ, L s.locals → ∀ vs, evs s args = some vs → ∀ callee v (st : State σ),
      R' vs (callEntryStateHOLFinite s callee) (.returned v) st →
      shapeEqHOL (shapeOfHOLExact v) sh = true → Fct v)
    (hL' : ∀ (s st : State σ) (v : ValueHOL 64), L s.locals →
      L' v (setVarHOLFinite rn v { st with locals := s.locals }).locals)
    (hk : ∀ v, Fct v → HoareG σ X (PK a K MK (L' v)) k (QW W)) :
    HoareG σ X (PK a K MK L) (.decCall rn sh f args k) (QW W) := by
  refine hoareG_decCall (FunSpec.and hf hf') ?_ ?_
  · intro s hs ⟨hL, Γ, p, he, hh, hK, hw'⟩ vs hvs callee v st ⟨hR, hR'⟩ _ hsh
    obtain ⟨hA, hF, hP⟩ := hargs s hs hL Γ p he hh hK vs hvs
    obtain ⟨Γ', q', he', hh', hmo, hnf, -⟩ := heap_callK ha hh hR (by simp [Good])
      (by simp [Abortive]) hA (hP _) hF hgw hgrf
    have hFv := hret s hL vs hvs callee v st hR' hsh
    refine hoareG_conseq (hk v hFv) (fun t _ ht => ?_) (fun r t _ _ hq => qw_locals hw _ hq)
    subst ht
    exact ⟨hL' s st v hL, Γ', q', ext_trans he he',
      heap_congr (s := st) ha.hH rfl rfl rfl rfl hh', Nat.le_trans hK hmo.1,
      winK_after ha hh' hmo hnf hw'⟩
  · intro s hs ⟨hL, Γ, p, he, hh, hK, hw'⟩ vs hvs callee r st ⟨hR, _⟩ _ habn r' hr' hna
    cases hr'
    obtain ⟨hA, hF, hP⟩ := hargs s hs hL Γ p he hh hK vs hvs
    obtain ⟨Γ', q', he', hh', -⟩ := heap_callK ha hh hR (abn_good' habn) hna hA (hP _) hF hgw hgrf
    exact hw.hW _ ⟨Γ', q', ext_trans he he', heap_congr (s := st) ha.hH rfl rfl rfl rfl hh'⟩

end InitECandidate.Solver.MemSafe.Ops4

#print axioms InitECandidate.Solver.MemSafe.Ops4.hoareG_seqKW
#print axioms InitECandidate.Solver.MemSafe.Ops4.hoareG_decKW
#print axioms InitECandidate.Solver.MemSafe.Ops4.hoareG_decKHW
#print axioms InitECandidate.Solver.MemSafe.Ops4.hoareG_decCallVW
