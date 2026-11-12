import InitECandidate.Solver.MemSafe.D0.D0A

/-!
# `depth0_prepare`: the body and `d0Spec_ext` / `d0Spec_proved`
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option cbv.warning false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace InitECandidate.Solver.MemSafe.D0
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Frames

variable {σ : Type}

section
local notation "HJ" => (Hooks.guestHooksR (σ := σ))
local notation "gwJ" => [Hooks.gJn]

/-- `depth0_prepare`'s core post at the end state. -/
def D0Core (s0 t : State σ) (Γ' : Gam) : Prop :=
  ChainX guestC tEV tCK GP GR Γ' t ∧ Phi t ≤ Phi s0 ∧ JrNZ t ∧ RootK s0 t ∧
    ∀ e', gword s0 nmEv = some e' → fld t.memory e' 112 = fld s0.memory e' 112

/-- The result relation: a run from the start state, and the core post on a return / `EvmErr`. -/
def D0Post (Γ0 : Gam) (s0 : State σ) (p0 : Ptrs) (r : PanSemResultExact 64) (t : State σ) : Prop :=
  ∃ (Γ' : Gam) (p' : Ptrs), RunT guestC HJ gwJ Γ0 s0 Γ' t p0 p' ∧
    (∀ v, r = .returned v → D0Core s0 t Γ') ∧ (∀ v, r = .exception nmEvmErr v → D0Core s0 t Γ')

theorem d0core_locals {s0 t : State σ} {Γ' : Gam} (h : D0Core s0 t Γ') (l : Locs) :
    D0Core s0 { t with locals := l } Γ' :=
  let ⟨a, b, c, k, m⟩ := h
  ⟨chainX_congr (s := t) (s' := { t with locals := l }) rfl rfl a, b, jrNZ_congr (s := t) rfl c,
    rootK_congr (s := s0) (t := t) rfl rfl rfl rfl k, m⟩

theorem d0post_locals {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {r : PanSemResultExact 64} {t : State σ}
    (h : D0Post Γ0 s0 p0 r t) (l : Locs) : D0Post Γ0 s0 p0 r { t with locals := l } := by
  have hH := (Hooks.frameCfg_guestHooksR (σ := σ)).hooks
  obtain ⟨Γ', p', hrun, h1, h2⟩ := h
  have hc : D0Core s0 t Γ' → D0Core s0 { t with locals := l } Γ' := fun ⟨a, b, c, k, m⟩ =>
    ⟨chainX_congr (s := t) (s' := { t with locals := l }) rfl rfl a, b,
      jrNZ_congr (s := t) rfl c, rootK_congr (s := s0) (t := t) rfl rfl rfl rfl k, m⟩
  exact ⟨Γ', p', runT_locals hH hrun l, fun v hv => hc (h1 v hv), fun v hv => hc (h2 v hv)⟩

variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame}
  {e c : BitVec 64} {rest : List Frame} {mg : BitVec 64}
variable [Fact (ChainOf s0 fs)]

theorem d0post_of_kp {t : State σ} (r : PanSemResultExact 64)
    (hs0e : gword s0 nmEv = some e) (hm0 : fld s0.memory e 112 = mg)
    (ht : KP HJ gwJ Γ0 s0 p0 fs e mg t) : D0Post Γ0 s0 p0 r t := by
  obtain ⟨hJ, Γ', p', hrun, hch, hE, hΦ, h112⟩ := ht
  have hm : ∀ e', gword s0 nmEv = some e' → fld t.memory e' 112 = fld s0.memory e' 112 := fun e' he' => by
    rw [hs0e, Option.some.injEq] at he'; subst he'; rw [h112, hm0]
  have hΦ' : Phi t ≤ Phi s0 := hΦ
  have hRt : RootK s0 t := rootK_of_same (Fact.out : ChainOf s0 fs) hch.chain
  exact ⟨Γ', p', hrun, fun _ _ => ⟨⟨fs, hch, hE⟩, hΦ', hJ, hRt, hm⟩, fun _ _ => ⟨⟨fs, hch, hE⟩, hΦ', hJ, hRt, hm⟩⟩

/-- The post of the body: every non-abortive result satisfies `D0Post`. -/
def D0Q (Γ0 : Gam) (s0 : State σ) (p0 : Ptrs) (ro : Option (PanSemResultExact 64)) (t : State σ) : Prop :=
  ∀ r, ro = some r → ¬ Abortive r → D0Post Γ0 s0 p0 r t

/-- `skip; prepare_dispatch(); skip; return 0` from a `KP` state. -/
theorem d0_rest (hRec : RecNoMsg σ) (hs0 : G guestC HJ Γ0 s0) (hfs : fs = (e, c) :: rest)
    (hs0e : gword s0 nmEv = some e) (hm0 : fld s0.memory e 112 = mg) {u0 : State σ}
    (hu : KP HJ gwJ Γ0 s0 p0 fs e mg u0) :
    HoareG σ guestCtx (fun t => t = u0) d0Rest (D0Q Γ0 s0 p0) := by
  have hH := (Hooks.frameCfg_guestHooksR (σ := σ)).hooks
  unfold d0Rest
  refine hoareG_seq (R := fun ro t => ro = none ∧ t = u0) (hoareG_skip fun _ _ h => ⟨rfl, h⟩)
    (fun _ _ _ hr _ h => absurd h.1 hr) (hoareG_pre ?_ fun _ _ h => h.2)
  refine hoareG_seq (R := fun ro t => (ro = none ∧ ∃ (Γ' : Gam) (p' : Ptrs),
      RunT guestC HJ gwJ Γ0 s0 Γ' t p0 p' ∧ D0Core s0 t Γ') ∨ (ro ≠ none ∧ D0Q Γ0 s0 p0 ro t)) ?_
    (fun r t _ hr _ h => ?_) ?_
  · -- the call
    have hue : gword u0 nmEv = some e := kp_ev_head hfs hu
    have key : ∀ vs, evs u0 [] = some vs → ∀ callee r st,
        SumRelX guestC HJ (sg0 []) (PdPre) (fun _ _ Γ a => ¬ KCell guestC Γ a) PdQ vs
          (callEntryStateHOLFinite u0 callee) r st → Good (some r) → ¬ Abortive r →
        ∃ (Γ' : Gam) (p' : Ptrs), RunT guestC HJ gwJ Γ0 s0 Γ' st p0 p' ∧
          (∀ v, r = .returned v → D0Core s0 st Γ') ∧
          (∀ v, r = .exception nmEvmErr v → D0Core s0 st Γ') := by
      intro vs hvs callee r st hR hg hna
      obtain ⟨hJ, Γ1, p1, hrun, hch, hE, hΦu, h112⟩ := hu
      have hG1 := hrun.2.2.2.2.2.1
      obtain ⟨Γ2, p2, hrun2, hc, hQ⟩ := run_callT hH (fun g h => by cases h) hrun hR hg hna
        (argsOK_any (any_sg0 []) (by rw [evs_zero hvs]; rfl))
        ⟨evs_zero hvs, ⟨fs, chainL_congr (s := u0) (s' := callEntryStateHOLFinite u0 callee) rfl rfl hch,
          chainE_congr (s := u0) (s' := callEntryStateHOLFinite u0 callee) rfl rfl hE⟩,
          jrNZ_congr (s := u0) rfl hJ⟩ (fun a h => h)
      have hR0 : RootK s0 (callEntryStateHOLFinite u0 callee) :=
        rootK_congr (s := s0) (t := u0) rfl rfl rfl rfl (rootK_of_same (Fact.out : ChainOf s0 fs) hch.chain)
      have hcc : ChainOf (callEntryStateHOLFinite u0 callee) fs :=
        (chainL_congr (s := u0) (s' := callEntryStateHOLFinite u0 callee) rfl rfl hch).chain
      have hu0e : gword (callEntryStateHOLFinite u0 callee) nmEv = some e := hue
      have hm112 : (∀ e', gword (callEntryStateHOLFinite u0 callee) nmEv = some e' →
          fld st.memory e' 112 = fld (callEntryStateHOLFinite u0 callee).memory e' 112) →
          ∀ e', gword s0 nmEv = some e' → fld st.memory e' 112 = fld s0.memory e' 112 := by
        intro m e' he'
        rw [hs0e, Option.some.injEq] at he'
        subst he'
        rw [m _ hu0e]
        show fld u0.memory e 112 = _
        rw [h112, hm0]
      have hc' : ∀ v, (r = .returned v ∨ r = .exception nmEvmErr v) → D0Core s0 st Γ2 := by
        intro v hv
        rcases hv with rfl | rfl
        · obtain ⟨a, b, c', k, m⟩ := hQ.1 v rfl
          rw [phi_locFree.entry] at b
          exact ⟨a, le_trans b hΦu, c', rootK_trans hR0 k ⟨fs, hcc⟩, hm112 m⟩
        · obtain ⟨a, b, c', k, m⟩ := hQ.2 v rfl
          rw [phi_locFree.entry] at b
          exact ⟨a, le_trans b hΦu, c', rootK_trans hR0 k ⟨fs, hcc⟩, hm112 m⟩
      exact ⟨Γ2, p2, hrun2, fun v hv => hc' v (Or.inl hv), fun v hv => hc' v (Or.inr hv)⟩
    refine hoareG_callD (pd_sumSpec hRec) ?_ ?_
    · intro s _ hs vs hvs callee v st hR _
      subst s
      obtain ⟨Γ', p', hrun, h1, h2⟩ := key vs hvs callee _ st hR (by simp [Good]) (not_abortive_ret v)
      refine Or.inl ⟨rfl, Γ', p', ?_, d0core_locals (h1 v rfl) _⟩
      exact runT_locals hH hrun _
    · intro s _ hs vs hvs callee r st hR _ habn
      subst s
      refine Or.inr ⟨by simp, fun r' hr' hna => ?_⟩
      simp only [Option.some.injEq] at hr'
      subst hr'
      exact d0post_locals (key vs hvs callee _ st hR (good_of_abn habn) hna) _
  · rcases h with ⟨h0, -⟩ | ⟨-, h⟩
    · exact absurd h0 hr
    · exact h
  · refine hoareG_pt fun u h => ?_
    rcases h with ⟨-, Γ', p', hrun, hcore⟩ | ⟨h0, -⟩
    swap; · exact absurd rfl h0
    refine hoareG_seq (R := fun ro t => ro = none ∧ t = u) (hoareG_skip fun _ _ h => ⟨rfl, h⟩)
      (fun _ _ _ hr _ h => absurd h.1 hr) (hoareG_pre ?_ fun _ _ h => h.2)
    refine hoareG_return fun s _ h v hv => ?_
    subst s
    intro r' hr' hna
    simp only [Option.some.injEq] at hr'
    subst hr'
    exact d0post_locals ⟨Γ', p', hrun, fun _ _ => hcore, fun v' hv' => by cases hv'⟩ _

/-- **The body of `depth0_prepare`.** -/
theorem d0_main {tE : Nat} (hTE : TeHook σ tE) (hRA : RaH σ) (hSC : SetCodeH σ) (hRec : RecNoMsg σ)
    (hfs : fs = (e, c) :: rest) (hG0 : G guestC HJ Γ0 s0)
    (hs0 : KP HJ gwJ Γ0 s0 p0 fs e (fld s0.memory e 112) s0) :
    HoareG σ guestCtx (fun u => u = s0) d0Body (D0Q Γ0 s0 p0) := by
  have hH := (Hooks.frameCfg_guestHooksR (σ := σ)).hooks
  set mg := fld s0.memory e 112 with hmg
  have he0 : gword s0 nmEv = some e := by
    obtain ⟨-, Γ1, p1, -, hch, -⟩ := hs0
    exact ev_head (hfs ▸ hch)
  rw [d0Body_eq]
  unfold d0BodyX
  refine hoareG_seq (R := fun ro t => ro = none ∧ t = s0) (hoareG_skip fun _ _ h => ⟨rfl, h⟩)
    (fun _ _ _ hr _ h => absurd h.1 hr) (hoareG_pre ?_ fun _ _ h => h.2)
  refine hoareG_dec fun s _ hs vm hvm _ => ?_
  rw [hs] at *; clear hs
  obtain ⟨rfl, -⟩ := ev_gLoad_eq he0 hvm
  refine hoareG_conseq (Q := D0Q Γ0 s0 p0) ?_ (fun _ _ h => h)
    (fun _ _ _ _ h r hr hna => d0post_locals (h r hr hna) _)
  have hu1 := kp_locals hH hs0 (setVarHOLFinite (nm "msg") (.val (.word mg)) s0).locals
  have hl1 : LA (setVarHOLFinite (nm "msg") (.val (.word mg)) s0).locals [(nm "msg", .val (.word mg))] :=
    la_set (s := s0) (la_nil _) _ _
  set u1 := setVarHOLFinite (nm "msg") (.val (.word mg)) s0 with hu1d
  have hmsg1 : u1.locals.lookup (nm "msg") = some (.val (.word mg)) := lk_set_self _ _ _
  refine hoareG_dec fun s _ hs vt hvt _ => ?_
  rw [hs] at *; clear hs
  have hvT := ev_lLoad_eq hmsg1 hvt
  subst hvT
  set T := fld u1.memory mg 8 with hTd
  refine hoareG_conseq (Q := D0Q Γ0 s0 p0) ?_ (fun _ _ h => h)
    (fun _ _ _ _ h r hr hna => d0post_locals (h r hr hna) _)
  have hu2 := kp_locals hH hu1 (setVarHOLFinite (nm "te") (.val (.word T)) u1).locals
  have hl2 := la_set (s := u1) hl1 (nm "te") (.val (.word T))
  set u2 := setVarHOLFinite (nm "te") (.val (.word T)) u1 with hu2d
  refine hoareG_seq (R := PLQ (KP HJ gwJ Γ0 s0 p0 fs e mg)
      (fun L => LA L [(nm "te", .val (.word T)), (nm "msg", .val (.word mg))])) ?_
    (fun r t _ hr _ h => ?_) ?_
  · exact plq_ite (d0_A hTE hRA hSC hRec hfs hu2 hl2) (plq_skip hu2 hl2)
  · rcases h with ⟨h0, -⟩ | ⟨r', h0, hA, hk⟩
    · exact absurd h0 hr
    · intro r'' hr'' hna
      rw [h0] at hr''; simp only [Option.some.injEq] at hr''; subst hr''
      exact d0post_of_kp r' he0 hmg.symm (hk hna)
  · refine hoareG_pt fun u h => ?_
    rcases h with ⟨-, hk, -⟩ | ⟨r', h0, -⟩
    · exact d0_rest hRec hG0 hfs he0 hmg.symm hk
    · cases h0

end

end InitECandidate.Solver.MemSafe.D0
