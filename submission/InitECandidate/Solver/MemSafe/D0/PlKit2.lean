import InitECandidate.Solver.MemSafe.D0.PlKit

/-!
# Combinators with a general locals predicate (`PLP`)

`PLP K Pl`: a normal end with `K` and the locals satisfying `Pl`, or an abnormal one with `K` when
non-abortive. `PL K mg = PLP K (msg = mg)`.
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

def PLP (K : State σ → Prop) (Pl : Locs → Prop) (ro : Option (PanSemResultExact 64)) (t : State σ) :
    Prop :=
  (ro = none ∧ K t ∧ Pl t.locals) ∨ (ro ≠ none ∧ ∀ r, ro = some r → ¬ Abortive r → K t)

theorem plp_of_ps {K : State σ → Prop} {Pl : Locs → Prop} {L : Locs} (hL : Pl L)
    {ro : Option (PanSemResultExact 64)} {t : State σ} (h : PS K L ro t) : PLP K Pl ro t := by
  rcases h with ⟨h0, hk, hl⟩ | h
  · exact Or.inl ⟨h0, hk, by rw [hl]; exact hL⟩
  · exact Or.inr h

theorem plp_mono {K K' : State σ → Prop} {Pl Pl' : Locs → Prop} (hK : ∀ t, K t → K' t)
    (hP : ∀ L, Pl L → Pl' L) {ro : Option (PanSemResultExact 64)} {t : State σ}
    (h : PLP K Pl ro t) : PLP K' Pl' ro t := by
  rcases h with ⟨h0, hk, hl⟩ | ⟨h0, hk⟩
  · exact Or.inl ⟨h0, hK _ hk, hP _ hl⟩
  · exact Or.inr ⟨h0, fun r hr hna => hK _ (hk r hr hna)⟩

/-- Abnormal part only (the locals predicate is irrelevant). -/
theorem plp_abn {K : State σ → Prop} {Pl Pl' : Locs → Prop} {ro : Option (PanSemResultExact 64)}
    {t : State σ} (hro : ro ≠ none) (h : PLP K Pl ro t) : PLP K Pl' ro t := by
  rcases h with ⟨h0, -⟩ | h
  · exact absurd h0 hro
  · exact Or.inr h

theorem plp_res {K : State σ → Prop} {Pl : Locs → Prop} (hK : ∀ (t : State σ) l, K t → K { t with locals := l })
    (n : MlS) (hn : ∀ L o, Pl L → Pl (L.resVarEq (n, o))) (o : Option (ValueHOL 64))
    {ro : Option (PanSemResultExact 64)} {t : State σ} (h : PLP K Pl ro t) :
    PLP K Pl ro { t with locals := t.locals.resVarEq (n, o) } := by
  rcases h with ⟨h0, hk, hl⟩ | ⟨h0, hk⟩
  · exact Or.inl ⟨h0, hK _ _ hk, hn _ _ hl⟩
  · exact Or.inr ⟨h0, fun r hr hna => hK _ _ (hk r hr hna)⟩

section
local notation "HJ" => (Hooks.guestHooksR (σ := σ))
variable {gw : List MlS} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame}
  {e c : BitVec 64} {rest : List Frame} {mg : BitVec 64}

theorem plp_seq {Pl Pl' : Locs → Prop} {p1 p2 : ProgHOL 64} {u0 : State σ}
    (h1 : HoareG σ guestCtx (fun t => t = u0) p1 (PLP (KP HJ gw Γ0 s0 p0 fs e mg) Pl))
    (h2 : ∀ u : State σ, KP HJ gw Γ0 s0 p0 fs e mg u → Pl u.locals →
      HoareG σ guestCtx (fun t => t = u) p2 (PLP (KP HJ gw Γ0 s0 p0 fs e mg) Pl')) :
    HoareG σ guestCtx (fun t => t = u0) (.seq p1 p2) (PLP (KP HJ gw Γ0 s0 p0 fs e mg) Pl') := by
  refine hoareG_seq (R := PLP (KP HJ gw Γ0 s0 p0 fs e mg) Pl) h1
    (fun _ _ _ hr _ h => plp_abn hr h) ?_
  refine hoareG_pt fun u h => ?_
  rcases h with ⟨-, hk, hl⟩ | ⟨h0, -⟩
  · exact h2 u hk hl
  · exact absurd rfl h0

/-- `p1; p2` where `p1` is a step with a `PS` post (locals unchanged). -/
theorem plp_seq_ps {Pl Pl' : Locs → Prop} {p1 p2 : ProgHOL 64} {u0 : State σ} (hL : Pl u0.locals)
    (h1 : HoareG σ guestCtx (fun t => t = u0) p1 (PS (KP HJ gw Γ0 s0 p0 fs e mg) u0.locals))
    (h2 : ∀ u : State σ, KP HJ gw Γ0 s0 p0 fs e mg u → u.locals = u0.locals →
      HoareG σ guestCtx (fun t => t = u) p2 (PLP (KP HJ gw Γ0 s0 p0 fs e mg) Pl')) :
    HoareG σ guestCtx (fun t => t = u0) (.seq p1 p2) (PLP (KP HJ gw Γ0 s0 p0 fs e mg) Pl') := by
  refine hoareG_seq (R := PS (KP HJ gw Γ0 s0 p0 fs e mg) u0.locals) h1
    (fun _ _ _ hr _ h => ?_) ?_
  · rcases h with ⟨h0, -⟩ | h
    · exact absurd h0 hr
    · exact Or.inr h
  · refine hoareG_pt fun u h => ?_
    rcases h with ⟨-, hk, hl⟩ | ⟨h0, -⟩
    · exact h2 u hk hl
    · exact absurd rfl h0

theorem plp_ite {Pl : Locs → Prop} {c : ExpHOL 64} {p1 p2 : ProgHOL 64} {u0 : State σ}
    (h1 : HoareG σ guestCtx (fun t => t = u0) p1 (PLP (KP HJ gw Γ0 s0 p0 fs e mg) Pl))
    (h2 : HoareG σ guestCtx (fun t => t = u0) p2 (PLP (KP HJ gw Γ0 s0 p0 fs e mg) Pl)) :
    HoareG σ guestCtx (fun t => t = u0) (.ite c p1 p2) (PLP (KP HJ gw Γ0 s0 p0 fs e mg) Pl) :=
  hoareG_ite (hoareG_pre h1 fun _ _ h => h.1) (hoareG_pre h2 fun _ _ h => h.1)

theorem plp_skip {Pl : Locs → Prop} {u0 : State σ} (hu : KP HJ gw Γ0 s0 p0 fs e mg u0)
    (hP : Pl u0.locals) :
    HoareG σ guestCtx (fun t => t = u0) .skip (PLP (KP HJ gw Γ0 s0 p0 fs e mg) Pl) :=
  hoareG_skip fun _ _ h => by rw [h]; exact Or.inl ⟨rfl, hu, hP⟩

theorem plp_ret {Pl : Locs → Prop} {u0 : State σ} (hu : KP HJ gw Γ0 s0 p0 fs e mg u0) {x : ExpHOL 64} :
    HoareG σ guestCtx (fun t => t = u0) (.return x) (PLP (KP HJ gw Γ0 s0 p0 fs e mg) Pl) := by
  refine hoareG_return fun s _ h v _ => ?_
  rw [h]
  exact Or.inr ⟨by simp, fun _ _ _ => kp_locals (Hooks.frameCfg_guestHooksR (σ := σ)).hooks hu _⟩

theorem plp_ps {Pl : Locs → Prop} {u0 : State σ} (hP : Pl u0.locals) {k : ProgHOL 64}
    (h : HoareG σ guestCtx (fun t => t = u0) k (PS (KP HJ gw Γ0 s0 p0 fs e mg) u0.locals)) :
    HoareG σ guestCtx (fun t => t = u0) k (PLP (KP HJ gw Γ0 s0 p0 fs e mg) Pl) :=
  hoareG_conseq h (fun _ _ h => h) (fun _ _ _ _ h => plp_of_ps hP h)

/-- `var rn = f(args); k` with the post `PLP`. -/
theorem plp_dec (hfs : fs = (e, c) :: rest)
    {f : MlS} {args : List (ExpHOL 64)} {sg : Sig}
    {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {PW : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    (hspec : SumSpecA σ guestCtx guestC HJ f sg Pre PW Q) (hfp : KeepsFp σ guestCtx f)
    (hgw : sg.gw = []) {u0 : State σ} (hu : KP HJ gw Γ0 s0 p0 fs e mg u0)
    {Pl : Locs → Prop}
    (hargs : ∀ vs, evs u0 args = some vs → ∀ Γ1 p1, RunT guestC HJ gw Γ0 s0 Γ1 u0 p0 p1 →
      ptrsOf u0 = some p1 → G guestC HJ Γ1 u0 →
      ChainL guestC tEV tCK Γ1 u0 fs → ChainE GP GR Γ1 u0 fs →
      ArgsOK guestC Γ1 p1 sg.params vs ∧ ∀ callee, Pre vs (callEntryStateHOLFinite u0 callee) Γ1)
    (hpw : ∀ vs callee Γ1 a, G guestC HJ Γ1 u0 → ProtCell guestC Γ1 a →
      PW vs (callEntryStateHOLFinite u0 callee) Γ1 a →
      PWtopM tEV tCK [] vs (callEntryStateHOLFinite u0 callee) Γ1 a)
    {rn : MlS} {sh : ShapeHOL} {k : ProgHOL 64}
    (hres : ∀ L o, Pl L → Pl (L.resVarEq (rn, o)))
    (hk : ∀ v (st : State σ), KP HJ gw Γ0 s0 p0 fs e mg st →
      (∃ vs callee Γ1 Γ2, evs u0 args = some vs ∧
        Q vs (callEntryStateHOLFinite u0 callee) Γ1 (.returned v) st Γ2) →
      shapeEqHOL (shapeOfHOLExact v) sh = true →
      HoareG σ guestCtx (fun t => t = setVarHOLFinite rn v { st with locals := u0.locals }) k
        (PLP (KP HJ gw Γ0 s0 p0 fs e mg) Pl)) :
    HoareG σ guestCtx (fun t => t = u0) (.decCall rn sh f args k)
      (PLP (KP HJ gw Γ0 s0 p0 fs e mg) Pl) := by
  have hH := (Hooks.frameCfg_guestHooksR (σ := σ)).hooks
  refine hoareG_kp_dec hfs hspec hfp hgw hu hargs hpw ?_ (fun ro t hro h => Or.inr ⟨hro, h⟩)
  intro v st hst hq hsh
  exact hoareG_conseq (hk v st hst hq hsh) (fun _ _ h => h)
    (fun _ _ _ _ h => plp_res (kp_locF hH) rn hres _ h)

end

end InitECandidate.Solver.MemSafe.D0

#print axioms InitECandidate.Solver.MemSafe.D0.plp_dec
