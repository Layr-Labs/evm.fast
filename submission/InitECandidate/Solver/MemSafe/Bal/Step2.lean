import InitECandidate.Solver.MemSafe.Bal.While

set_option maxRecDepth 100000
set_option linter.unusedSectionVars false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Bal
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.HtabEntries InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Frames

variable {σ : Type}

section st2
variable {cs : List Cap} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs}

/-- **A summarised call `x = f(args);` assigning a local** whose old value is a word. -/
theorem gstepA (hH : HooksLawful guestC (guestHooksR (σ := σ)))
    {f : MlS} {sg : Sig} {x : MlS}
    {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {PW' : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    (hsum : SumSpecA σ guestCtx guestC (guestHooksR (σ := σ)) f sg Pre PW' Q)
    (hf : (balFns.map Prod.fst).contains f = true) (hsg : ∀ g ∈ guestC.PG, g ∉ sg.gw)
    (hord0 : p0.Ordered) (hL0 : Layout guestC p0 Γ0)
    {args : List (ExpHOL 64)} {L Ln : Gam → State σ → Prop}
    (hold : ∀ Γ s, PI cs Γ0 s0 p0 L Γ s → ∃ w0, s.locals.lookup x = some (.val (.word w0)))
    (hdata : ∀ Γ s, PI cs Γ0 s0 p0 L Γ s → ∀ vs, evs s args = some vs → ∀ callee,
      (∃ p, ptrsOf s = some p ∧ ArgsOK guestC Γ p sg.params vs) ∧
      Pre vs (callEntryStateHOLFinite s callee) Γ ∧
      (∀ a, ArgCells sg.params vs a → WCell guestC Γ a ∨ ¬ p0.Allocated a.toNat ∨ cpw cs Γ0 s0 p0 a) ∧
      (∀ y, ProtCell guestC Γ y → PW' vs (callEntryStateHOLFinite s callee) Γ y → cpw cs Γ0 s0 p0 y))
    (hnext : ∀ Γ s vs callee (w : BitVec 64) Γ1 (st : State σ), PI cs Γ0 s0 p0 L Γ s → evs s args = some vs →
      TrkC cs Γ0 s0 p0 Γ1 st →
      (∃ p p', ptrsOf s = some p ∧ ptrsOf st = some p' ∧ p.Mono p' ∧ Ext Γ Γ1 ∧ NewFresh Γ Γ1 p p') →
      Q vs (callEntryStateHOLFinite s callee) Γ (.returned (.val (.word w))) st Γ1 →
      (∃ p p', SumCore guestC (guestHooksR (σ := σ)) sg
        (fun a => ProtCell guestC Γ a ∧ PW' vs (callEntryStateHOLFinite s callee) Γ a) Γ
        (callEntryStateHOLFinite s callee) vs (.returned (.val (.word w))) st Γ1 p p') →
      Ln Γ1 (setVarHOLFinite x (.val (.word w)) { st with locals := s.locals })) :
    HoareG σ guestCtx (fun s => ∃ Γ, PI cs Γ0 s0 p0 L Γ s) (.call (some (some (.local, x), none)) f args)
      (RR cs Γ0 s0 p0 Ln) := by
  have hF := Rec.foldOK_guestR (σ := σ)
  refine hoareG_callA (FunSpec.and (sumRel_fun hsum) (FunSpec.and (Frames.funSpec_dom _)
    (funSpec_bal_gw4 hF.hX hf))) ?_ ?_
  · intro s hs ⟨Γ, hP⟩ vs hvs callee v st ⟨hS, ⟨hd, hbe⟩, hgw⟩ hst hvalid
    obtain ⟨w0, hw0⟩ := hold Γ s hP
    obtain ⟨w, rfl⟩ := valid_word hw0 hvalid
    obtain ⟨hargs, hpre, hArg, hPW⟩ := hdata Γ s hP vs hvs callee
    obtain ⟨Γ1, pp, pp', hc, hq, hT2⟩ := call_cs hH hP.1.1 hord0 hL0 (sg := sg) (Pre := Pre)
      (PW' := PW') (Q := Q) (vs := vs) (r := .returned (.val (.word w))) (callee := callee) (st := st) hS
      (by simp [Good]) (by simp [Abortive]) hargs hpre hsg hArg hPW hd hbe
    exact Or.inl ⟨rfl, Γ1, ⟨Struct.trk_congr hH hT2 rfl rfl rfl rfl, fun g hg => (hgw g hg).trans (hP.1.2 g hg)⟩,
      hnext Γ s vs callee w Γ1 st hP hvs hT2 ⟨pp, pp', (Frames.ptrsOf_congr rfl).symm.trans hc.1, hc.2.1, hc.2.2.1,
        hc.2.2.2.1, hc.2.2.2.2.1⟩ hq ⟨pp, pp', hc⟩⟩
  · intro s hs ⟨Γ, hP⟩ vs hvs callee r st ⟨hS, ⟨hd, hbe⟩, hgw⟩ hst habn'
    by_cases hab : Abortive r
    · exact rr_ab r _ hab
    · obtain ⟨hargs, hpre, hArg, hPW⟩ := hdata Γ s hP vs hvs callee
      obtain ⟨Γ1, pp, pp', hc, hq, hT2⟩ := call_cs hH hP.1.1 hord0 hL0 (sg := sg) (Pre := Pre)
        (PW' := PW') (Q := Q) (vs := vs) (r := r) (callee := callee) (st := st) hS
        (abn_good habn') hab hargs hpre hsg hArg hPW hd hbe
      exact Or.inr ⟨by simp, gq4_of_iv _ ⟨Struct.trk_congr hH hT2 rfl rfl rfl rfl,
        fun g hg => (hgw g hg).trans (hP.1.2 g hg)⟩⟩


theorem lk_resVar_ne (M : HolFiniteMapExact MlS (ValueHOL 64)) (k x : MlS) (v : Option (ValueHOL 64))
    (h : x ≠ k) : (M.resVarEq (k, v)).lookup x = M.lookup x := by
  cases v with
  | none => simp [HolFiniteMapExact.resVarEq, FDOMSUB_HOL, h]
  | some w => simp [HolFiniteMapExact.resVarEq, FUPDATE_HOL, h]

/-- Local lookups: the listed locals have these values. -/
def LL (ps : List (MlS × ValueHOL 64)) (Γ : Gam) (t : State σ) : Prop :=
  ∀ p ∈ ps, t.locals.lookup p.1 = some p.2

theorem ll_res {ps : List (MlS × ValueHOL 64)} {Γ : Gam} {t : State σ} (h : LL ps Γ t) {rn : MlS}
    (hne : ∀ p ∈ ps, p.1 ≠ rn) (o : Option (ValueHOL 64)) :
    LL ps Γ { t with locals := t.locals.resVarEq (rn, o) } := fun p hp => by
  show (t.locals.resVarEq (rn, o)).lookup p.1 = some p.2
  rw [lk_resVar_ne _ _ _ _ (hne p hp)]
  exact h p hp

theorem ll_set {ps : List (MlS × ValueHOL 64)} {Γ : Gam} {t : State σ} (h : LL ps Γ t) {x : MlS}
    (hne : ∀ p ∈ ps, p.1 ≠ x) (v : ValueHOL 64) : LL ps Γ (setVarHOLFinite x v t) :=
  fun p hp => (lk_set_ne _ _ (hne p hp).symm).trans (h p hp)

theorem rr_res {cs : List Cap} {L L2 : Gam → State σ → Prop}
    (hres : ∀ Γ t o, L Γ t → L2 Γ { t with locals := t.locals.resVarEq (rn, o) })
    (hH : HooksLawful guestC (guestHooksR (σ := σ))) {r : Option (PanSemResultExact 64)} {t : State σ}
    (o : Option (ValueHOL 64)) (h : RR cs Γ0 s0 p0 L r t) :
    RR cs Γ0 s0 p0 L2 r { t with locals := t.locals.resVarEq (rn, o) } := by
  rcases h with ⟨hr, Γ, ⟨hT, hg⟩, hl⟩ | ⟨hr, hq⟩
  · exact Or.inl ⟨hr, Γ, ⟨Struct.trk_congr hH hT rfl rfl rfl rfl, hg⟩, hres Γ t o hl⟩
  · exact Or.inr ⟨hr, gq4_locals hH r t _ hq⟩

/-- **A summarised `var rn = f(args); k` inside a loop body**: `k` has a post `RR L2`, closed under the
restoration of `rn`. -/
theorem gstepDec2 (hH : HooksLawful guestC (guestHooksR (σ := σ)))
    {f : MlS} {sg : Sig} {rn : MlS} {sh : ShapeHOL} {k : ProgHOL 64}
    {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {PW' : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    (hsum : SumSpecA σ guestCtx guestC (guestHooksR (σ := σ)) f sg Pre PW' Q)
    (hf : (balFns.map Prod.fst).contains f = true) (hsg : ∀ g ∈ guestC.PG, g ∉ sg.gw)
    (hord0 : p0.Ordered) (hL0 : Layout guestC p0 Γ0)
    {args : List (ExpHOL 64)} {L Ln L2 : Gam → State σ → Prop}
    (hdata : ∀ Γ s, PI cs Γ0 s0 p0 L Γ s → ∀ vs, evs s args = some vs → ∀ callee,
      (∃ p, ptrsOf s = some p ∧ ArgsOK guestC Γ p sg.params vs) ∧
      Pre vs (callEntryStateHOLFinite s callee) Γ ∧
      (∀ a, ArgCells sg.params vs a → WCell guestC Γ a ∨ ¬ p0.Allocated a.toNat ∨ cpw cs Γ0 s0 p0 a) ∧
      (∀ y, ProtCell guestC Γ y → PW' vs (callEntryStateHOLFinite s callee) Γ y → cpw cs Γ0 s0 p0 y))
    (hnext : ∀ Γ s vs callee v Γ1 (st : State σ), PI cs Γ0 s0 p0 L Γ s → evs s args = some vs →
      shapeEqHOL (shapeOfHOLExact v) sh = true → TrkC cs Γ0 s0 p0 Γ1 st →
      (∃ p p', ptrsOf s = some p ∧ ptrsOf st = some p' ∧ p.Mono p' ∧ Ext Γ Γ1 ∧ NewFresh Γ Γ1 p p') →
      Q vs (callEntryStateHOLFinite s callee) Γ (.returned v) st Γ1 →
      Ln Γ1 (setVarHOLFinite rn v { st with locals := s.locals }))
    (hres : ∀ Γ t o, L2 Γ t → Lo Γ { t with locals := t.locals.resVarEq (rn, o) })
    (hk : HoareG σ guestCtx (fun s => ∃ Γ, PI cs Γ0 s0 p0 Ln Γ s) k (RR cs Γ0 s0 p0 L2)) :
    HoareG σ guestCtx (fun s => ∃ Γ, PI cs Γ0 s0 p0 L Γ s) (.decCall rn sh f args k) (RR cs Γ0 s0 p0 Lo) := by
  have hF := Rec.foldOK_guestR (σ := σ)
  refine hoareG_decCall (FunSpec.and (sumRel_fun hsum) (FunSpec.and (Frames.funSpec_dom _)
    (funSpec_bal_gw4 hF.hX hf))) ?_ ?_
  · intro s hs ⟨Γ, hP⟩ vs hvs callee v st ⟨hS, ⟨hd, hbe⟩, hgw⟩ hst hsh
    obtain ⟨hargs, hpre, hArg, hPW⟩ := hdata Γ s hP vs hvs callee
    obtain ⟨Γ1, pp, pp', hc, hq, hT2⟩ := call_cs hH hP.1.1 hord0 hL0 (sg := sg) (Pre := Pre)
      (PW' := PW') (Q := Q) (vs := vs) (r := .returned v) (callee := callee) (st := st) hS
      (by simp [Good]) (by simp [Abortive]) hargs hpre hsg hArg hPW hd hbe
    refine hoareG_conseq (P := fun t => t = setVarHOLFinite rn v { st with locals := s.locals }) ?_
      (fun s _ h => h) (fun r t _ _ hq' => rr_res hres hH _ hq')
    refine hoareG_pre hk (fun t _ ht => ?_)
    subst ht
    exact ⟨Γ1, ⟨Struct.trk_congr hH hT2 rfl rfl rfl rfl, fun g hg => (hgw g hg).trans (hP.1.2 g hg)⟩,
      hnext Γ s vs callee v Γ1 st hP hvs hsh hT2 ⟨pp, pp', (Frames.ptrsOf_congr rfl).symm.trans hc.1, hc.2.1,
        hc.2.2.1, hc.2.2.2.1, hc.2.2.2.2.1⟩ hq⟩
  · intro s hs ⟨Γ, hP⟩ vs hvs callee r st ⟨hS, ⟨hd, hbe⟩, hgw⟩ hst habn'
    by_cases hab : Abortive r
    · exact rr_ab r _ hab
    · obtain ⟨hargs, hpre, hArg, hPW⟩ := hdata Γ s hP vs hvs callee
      obtain ⟨Γ1, pp, pp', hc, hq, hT2⟩ := call_cs hH hP.1.1 hord0 hL0 (sg := sg) (Pre := Pre)
        (PW' := PW') (Q := Q) (vs := vs) (r := r) (callee := callee) (st := st) hS
        (abn_good habn') hab hargs hpre hsg hArg hPW hd hbe
      exact Or.inr ⟨by simp, gq4_of_iv _ ⟨Struct.trk_congr hH hT2 rfl rfl rfl rfl,
        fun g hg => (hgw g hg).trans (hP.1.2 g hg)⟩⟩


/-- `var n = e; body` with the final post `GQ4` (closed under locals). -/
theorem hdec_gq (hH : HooksLawful guestC (guestHooksR (σ := σ))) {n : MlS} {sh : ShapeHOL} {e : ExpHOL 64}
    {body : ProgHOL 64} {P : State σ → Prop}
    (h : ∀ s, InCtx s guestCtx → P s → ∀ v, ev s e = some v → shapeEqHOL sh (shapeOfHOLExact v) = true →
      HoareG σ guestCtx (fun t => t = setVarHOLFinite n v s) body (GQ4 cs Γ0 s0 p0)) :
    HoareG σ guestCtx P (.dec n sh e body) (GQ4 cs Γ0 s0 p0) := by
  refine hoareG_dec fun s hs hp v hv hsh => ?_
  exact hoareG_conseq (h s hs hp v hv hsh) (fun _ _ h => h) (fun r t _ _ hq => gq4_locals hH r t _ hq)

/-- A pointer slot of an object of the typing. -/
theorem slot_ptr {Γ : Gam} {t : State σ} {B : Obj} {th : Nat} {k : Nat}
    (hG : G guestC (guestHooksR (σ := σ)) Γ t) (hB : B ∈ Γ) (hsz : 8 * k + 8 ≤ B.size)
    (hs : (guestC.ty B.ty).slot k = .ptr th) :
    ∃ T ∈ Γ, T.base = rd t.memory (B.cell k) ∧ T.ty = th := by
  obtain ⟨q, hq, hord, hL, hF, -⟩ := hG
  have := hF B hB k hsz
  rw [hs] at this
  exact this

end st2

end InitECandidate.Solver.MemSafe.Bal
