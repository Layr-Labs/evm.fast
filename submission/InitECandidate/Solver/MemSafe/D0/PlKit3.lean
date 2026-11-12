import InitECandidate.Solver.MemSafe.D0.Kq3
import InitECandidate.Solver.MemSafe.D0.PlKit2

/-!
# Combinators with the loop-body post `PLQ`

`PLQ K Pl`: a normal end with `K` and the locals `Pl`, or an abnormal end (`Abn`) with `K` when
non-abortive. A body with this post never `break`s / `continue`s, so `plq_while` applies.
Also `LA` (a known-locals list), the `KPd` closures and `hoareG_rebase`.
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

/-! ## Known locals -/

/-- The locals `L` contain the bindings `xs` (newest first). -/
def LA (L : Locs) (xs : List (MlS × ValueHOL 64)) : Prop :=
  ∀ x v, xs.lookup x = some v → L.lookup x = some v

theorem la_nil (L : Locs) : LA L [] := fun x v h => by simp at h

theorem la_set {L : Locs} {xs : List (MlS × ValueHOL 64)} (h : LA L xs) (n : MlS)
    (v : ValueHOL 64) (s : State σ) :
    LA (setVarHOLFinite n v { s with locals := L }).locals ((n, v) :: xs) := by
  intro x w hx
  by_cases hxn : x = n
  · subst hxn
    simp only [List.lookup, beq_self_eq_true, Option.some.injEq] at hx
    subst hx
    exact lk_set_self _ _ _
  · have : (x == n) = false := by simpa using hxn
    simp only [List.lookup, this] at hx
    rw [lk_set_ne _ _ (Ne.symm hxn)]
    exact h x w hx

theorem la_res {L : Locs} {xs : List (MlS × ValueHOL 64)} (h : LA L xs) {n : MlS}
    (hn : xs.lookup n = none) (o : Option (ValueHOL 64)) : LA (L.resVarEq (n, o)) xs := by
  intro x w hx
  have hxn : x ≠ n := by rintro rfl; rw [hn] at hx; cases hx
  rw [lookup_resVarEq_ne _ _ (Ne.symm hxn)]
  exact h x w hx

theorem la_sub {L : Locs} {xs ys : List (MlS × ValueHOL 64)} (h : LA L xs)
    (hs : ∀ x v, ys.lookup x = some v → xs.lookup x = some v) : LA L ys :=
  fun x v hx => h x v (hs x v hx)

theorem la_ev {u : State σ} {xs : List (MlS × ValueHOL 64)} (h : LA u.locals xs) {x : MlS}
    {v : ValueHOL 64} (hx : xs.lookup x = some v) : ev u (lv x) = some v := by
  rw [ev_lv]; exact h x v hx

theorem la_lookup {L : Locs} {xs : List (MlS × ValueHOL 64)} (h : LA L xs) {x : MlS}
    {v : ValueHOL 64} (hx : xs.lookup x = some v) : L.lookup x = some v := h x v hx

/-! ## The post -/

def PLQ (K : State σ → Prop) (Pl : Locs → Prop) (ro : Option (PanSemResultExact 64)) (t : State σ) :
    Prop :=
  (ro = none ∧ K t ∧ Pl t.locals) ∨ (∃ r, ro = some r ∧ Abn r ∧ (¬ Abortive r → K t))

theorem plq_of_psn {K : State σ → Prop} {Pl : Locs → Prop} {L : Locs} (hL : Pl L)
    {ro : Option (PanSemResultExact 64)} {t : State σ} (h : PSn K L ro t) : PLQ K Pl ro t := by
  rcases h with ⟨h0, hk, hl⟩ | h
  · exact Or.inl ⟨h0, hk, by rw [hl]; exact hL⟩
  · exact Or.inr h

theorem plq_mono {K K' : State σ → Prop} {Pl Pl' : Locs → Prop} (hK : ∀ t, K t → K' t)
    (hP : ∀ L, Pl L → Pl' L) {ro : Option (PanSemResultExact 64)} {t : State σ}
    (h : PLQ K Pl ro t) : PLQ K' Pl' ro t := by
  rcases h with ⟨h0, hk, hl⟩ | ⟨r, h0, hA, hk⟩
  · exact Or.inl ⟨h0, hK _ hk, hP _ hl⟩
  · exact Or.inr ⟨r, h0, hA, fun hna => hK _ (hk hna)⟩

theorem plq_abn {K : State σ → Prop} {Pl Pl' : Locs → Prop} {ro : Option (PanSemResultExact 64)}
    {t : State σ} (hro : ro ≠ none) (h : PLQ K Pl ro t) : PLQ K Pl' ro t := by
  rcases h with ⟨h0, -⟩ | h
  · exact absurd h0 hro
  · exact Or.inr h

theorem plq_res {K : State σ → Prop} {Pl : Locs → Prop}
    (hK : ∀ (t : State σ) l, K t → K { t with locals := l })
    (n : MlS) (hn : ∀ L o, Pl L → Pl (L.resVarEq (n, o))) (o : Option (ValueHOL 64))
    {ro : Option (PanSemResultExact 64)} {t : State σ} (h : PLQ K Pl ro t) :
    PLQ K Pl ro { t with locals := t.locals.resVarEq (n, o) } := by
  rcases h with ⟨h0, hk, hl⟩ | ⟨r, h0, hA, hk⟩
  · exact Or.inl ⟨h0, hK _ _ hk, hn _ _ hl⟩
  · exact Or.inr ⟨r, h0, hA, fun hna => hK _ _ (hk hna)⟩

section
local notation "HJ" => (Hooks.guestHooksR (σ := σ))
variable {gw : List MlS} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame}
  {e c : BitVec 64} {rest : List Frame} {mg : BitVec 64}

theorem plq_seq {Pl Pl' : Locs → Prop} {p1 p2 : ProgHOL 64} {u0 : State σ}
    (h1 : HoareG σ guestCtx (fun t => t = u0) p1 (PLQ (KP HJ gw Γ0 s0 p0 fs e mg) Pl))
    (h2 : ∀ u : State σ, KP HJ gw Γ0 s0 p0 fs e mg u → Pl u.locals →
      HoareG σ guestCtx (fun t => t = u) p2 (PLQ (KP HJ gw Γ0 s0 p0 fs e mg) Pl')) :
    HoareG σ guestCtx (fun t => t = u0) (.seq p1 p2) (PLQ (KP HJ gw Γ0 s0 p0 fs e mg) Pl') := by
  refine hoareG_seq (R := PLQ (KP HJ gw Γ0 s0 p0 fs e mg) Pl) h1
    (fun _ _ _ hr _ h => plq_abn hr h) ?_
  refine hoareG_pt fun u h => ?_
  rcases h with ⟨-, hk, hl⟩ | ⟨r, h0, -⟩
  · exact h2 u hk hl
  · cases h0

theorem plq_seq_ps {Pl Pl' : Locs → Prop} {p1 p2 : ProgHOL 64} {u0 : State σ}
    (h1 : HoareG σ guestCtx (fun t => t = u0) p1 (PSn (KP HJ gw Γ0 s0 p0 fs e mg) u0.locals))
    (h2 : ∀ u : State σ, KP HJ gw Γ0 s0 p0 fs e mg u → u.locals = u0.locals →
      HoareG σ guestCtx (fun t => t = u) p2 (PLQ (KP HJ gw Γ0 s0 p0 fs e mg) Pl')) :
    HoareG σ guestCtx (fun t => t = u0) (.seq p1 p2) (PLQ (KP HJ gw Γ0 s0 p0 fs e mg) Pl') := by
  refine hoareG_seq (R := PSn (KP HJ gw Γ0 s0 p0 fs e mg) u0.locals) h1
    (fun _ _ _ hr _ h => ?_) ?_
  · rcases h with ⟨h0, -⟩ | h
    · exact absurd h0 hr
    · exact Or.inr h
  · refine hoareG_pt fun u h => ?_
    rcases h with ⟨-, hk, hl⟩ | ⟨r, h0, -⟩
    · exact h2 u hk hl
    · cases h0

theorem plq_ite {Pl : Locs → Prop} {c' : ExpHOL 64} {p1 p2 : ProgHOL 64} {u0 : State σ}
    (h1 : HoareG σ guestCtx (fun t => t = u0) p1 (PLQ (KP HJ gw Γ0 s0 p0 fs e mg) Pl))
    (h2 : HoareG σ guestCtx (fun t => t = u0) p2 (PLQ (KP HJ gw Γ0 s0 p0 fs e mg) Pl)) :
    HoareG σ guestCtx (fun t => t = u0) (.ite c' p1 p2) (PLQ (KP HJ gw Γ0 s0 p0 fs e mg) Pl) :=
  hoareG_ite (hoareG_pre h1 fun _ _ h => h.1) (hoareG_pre h2 fun _ _ h => h.1)

theorem plq_skip {Pl : Locs → Prop} {u0 : State σ} (hu : KP HJ gw Γ0 s0 p0 fs e mg u0)
    (hP : Pl u0.locals) :
    HoareG σ guestCtx (fun t => t = u0) .skip (PLQ (KP HJ gw Γ0 s0 p0 fs e mg) Pl) :=
  hoareG_skip fun _ _ h => by rw [h]; exact Or.inl ⟨rfl, hu, hP⟩

theorem plq_ps {Pl : Locs → Prop} {u0 : State σ} (hP : Pl u0.locals) {k : ProgHOL 64}
    (h : HoareG σ guestCtx (fun t => t = u0) k (PSn (KP HJ gw Γ0 s0 p0 fs e mg) u0.locals)) :
    HoareG σ guestCtx (fun t => t = u0) k (PLQ (KP HJ gw Γ0 s0 p0 fs e mg) Pl) :=
  hoareG_conseq h (fun _ _ h => h) (fun _ _ _ _ h => plq_of_psn hP h)

theorem plq_assign {Pl : Locs → Prop} {u0 : State σ} {n : MlS} {x : ExpHOL 64}
    (hu : KP HJ gw Γ0 s0 p0 fs e mg u0)
    (hP : ∀ v, ev u0 x = some v → Pl (setVarHOLFinite n v u0).locals) :
    HoareG σ guestCtx (fun t => t = u0) (.assign .local n x)
      (PLQ (KP HJ gw Γ0 s0 p0 fs e mg) Pl) := by
  refine hoareG_assignK fun s _ hs v hv _ => ?_
  subst s
  exact Or.inl ⟨rfl, kp_locals (Hooks.frameCfg_guestHooksR (σ := σ)).hooks hu _, hP v hv⟩

/-- `dec n e k`: the post is invariant under restoring `n`. -/
theorem plq_dec {Pl : Locs → Prop} {u0 : State σ} {n : MlS} {sh : ShapeHOL} {x : ExpHOL 64}
    {k : ProgHOL 64}
    (hres : ∀ L o, Pl L → Pl (L.resVarEq (n, o)))
    (h : ∀ v, ev u0 x = some v → shapeEqHOL sh (shapeOfHOLExact v) = true →
      HoareG σ guestCtx (fun t => t = setVarHOLFinite n v u0) k
        (PLQ (KP HJ gw Γ0 s0 p0 fs e mg) Pl)) :
    HoareG σ guestCtx (fun t => t = u0) (.dec n sh x k) (PLQ (KP HJ gw Γ0 s0 p0 fs e mg) Pl) := by
  have hH := (Hooks.frameCfg_guestHooksR (σ := σ)).hooks
  exact Struct.hoareG_decN (fun r t o h => plq_res (kp_locF hH) n hres o h) fun s _ hs v hv hsh => by
    subst s; exact h v hv hsh

/-- `var rn = f(args); k` with the post `PLQ`. -/
theorem plq_decCall (hfs : fs = (e, c) :: rest)
    {f : MlS} {args : List (ExpHOL 64)} {sg : Sig}
    {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {PW : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    (hspec : SumSpecA σ guestCtx guestC HJ f sg Pre PW Q) (hfp : KeepsFp σ guestCtx f)
    (hsub : ∀ g, g ∈ sg.gw → g ∈ gw) (hgwE : nmEv ∉ sg.gw ∧ nmCC ∉ sg.gw) (hgJ : JrOut sg.gw)
    {u0 : State σ} (hu : KP HJ gw Γ0 s0 p0 fs e mg u0) {Pl : Locs → Prop}
    (hargs : ∀ vs, evs u0 args = some vs → ∀ Γ1 p1, RunT guestC HJ gw Γ0 s0 Γ1 u0 p0 p1 →
      ptrsOf u0 = some p1 → G guestC HJ Γ1 u0 →
      ChainL guestC tEV tCK Γ1 u0 fs → ChainE GP GR Γ1 u0 fs →
      ArgsOK guestC Γ1 p1 sg.params vs ∧ ∀ callee, Pre vs (callEntryStateHOLFinite u0 callee) Γ1)
    (hpw : ∀ vs callee Γ1 a, G guestC HJ Γ1 u0 → ProtCell guestC Γ1 a →
      PW vs (callEntryStateHOLFinite u0 callee) Γ1 a →
      PWtopM tEV tCK [] vs (callEntryStateHOLFinite u0 callee) Γ1 a)
    {rn : MlS} {sh : ShapeHOL} {k : ProgHOL 64}
    (hres : ∀ L o, Pl L → Pl (L.resVarEq (rn, o)))
    (hk : ∀ vs callee, evs u0 args = some vs → ∀ v (st : State σ),
      KPd HJ gw Γ0 s0 p0 fs e mg st (fun Γ2 p2 => ∃ Γ1,
        Q vs (callEntryStateHOLFinite u0 callee) Γ1 (.returned v) st Γ2 ∧ ptrsOf st = some p2) →
      shapeEqHOL (shapeOfHOLExact v) sh = true →
      HoareG σ guestCtx (fun t => t = setVarHOLFinite rn v { st with locals := u0.locals }) k
        (PLQ (KP HJ gw Γ0 s0 p0 fs e mg) Pl)) :
    HoareG σ guestCtx (fun t => t = u0) (.decCall rn sh f args k)
      (PLQ (KP HJ gw Γ0 s0 p0 fs e mg) Pl) := by
  have hH := (Hooks.frameCfg_guestHooksR (σ := σ)).hooks
  refine hoareG_kpDecCallTn (Hooks.frameCfg_guestHooksR (σ := σ)) hfs hspec hfp hsub hgwE hgJ
    (ks := []) (by simp) hu hargs hpw (Or.inl rfl) ?_ ?_
  · intro vs callee hvs v st hst hsh
    exact hoareG_conseq (hk vs callee hvs v st hst hsh) (fun _ _ h => h)
      (fun _ _ _ _ h => plq_res (kp_locF hH) rn hres _ h)
  · intro r t habn hk'
    exact Or.inr ⟨r, rfl, habn, hk'⟩

/-- `f(args);` with the post `PLQ`. -/
theorem plq_call (hfs : fs = (e, c) :: rest)
    {f : MlS} {args : List (ExpHOL 64)} {sg : Sig}
    {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {PW : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    (hspec : SumSpecA σ guestCtx guestC HJ f sg Pre PW Q) (hfp : KeepsFp σ guestCtx f)
    (hsub : ∀ g, g ∈ sg.gw → g ∈ gw) (hgwE : nmEv ∉ sg.gw ∧ nmCC ∉ sg.gw) (hgJ : JrOut sg.gw)
    {u0 : State σ} (hu : KP HJ gw Γ0 s0 p0 fs e mg u0) {Pl : Locs → Prop} (hP : Pl u0.locals)
    (hargs : ∀ vs, evs u0 args = some vs → ∀ Γ1 p1, RunT guestC HJ gw Γ0 s0 Γ1 u0 p0 p1 →
      ptrsOf u0 = some p1 → G guestC HJ Γ1 u0 →
      ChainL guestC tEV tCK Γ1 u0 fs → ChainE GP GR Γ1 u0 fs →
      ArgsOK guestC Γ1 p1 sg.params vs ∧ ∀ callee, Pre vs (callEntryStateHOLFinite u0 callee) Γ1)
    (hpw : ∀ vs callee Γ1 a, G guestC HJ Γ1 u0 → ProtCell guestC Γ1 a →
      PW vs (callEntryStateHOLFinite u0 callee) Γ1 a →
      PWtopM tEV tCK [] vs (callEntryStateHOLFinite u0 callee) Γ1 a) :
    HoareG σ guestCtx (fun t => t = u0) (callD f args) (PLQ (KP HJ gw Γ0 s0 p0 fs e mg) Pl) :=
  plq_ps hP (hoareG_kpCallDn (Hooks.frameCfg_guestHooksR (σ := σ)) hfs hspec hfp hsub hgwE hgJ
    (ks := []) (by simp) hu hargs hpw (Or.inl rfl))


theorem plq_while {K : State σ → Prop} {Pl Pl' : Locs → Prop} {c' : ExpHOL 64} {body : ProgHOL 64}
    (hclk : ∀ s : State σ, K s → K (decClockHOLFinite s))
    (hb : ∀ u : State σ, K u → Pl u.locals → CondTrue u c' →
      HoareG σ guestCtx (fun t => t = u) body (PLQ K Pl))
    (hexit : ∀ u : State σ, K u → Pl u.locals → ev u c' = some (.val (.word 0)) → Pl' u.locals) :
    HoareG σ guestCtx (fun t => K t ∧ Pl t.locals) (.while c' body) (PLQ K Pl') := by
  refine hoareG_while (I := fun t => K t ∧ Pl t.locals) (fun s ⟨hk, hl⟩ => ⟨hclk s hk, hl⟩) ?_
    (fun s _ ⟨hk, hl⟩ hc => Or.inl ⟨rfl, hk, hexit s hk hl hc⟩)
  refine hoareG_pt fun u ⟨⟨hk, hl⟩, hc⟩ => ?_
  refine hoareG_conseq (hb u hk hl hc) (fun _ _ h => h) (fun r t _ _ h => ?_)
  rcases h with ⟨h0, hk', hl'⟩ | ⟨r', h0, hA, hk'⟩
  · subst h0
    exact ⟨fun _ => ⟨hk', hl'⟩, fun h => (by cases h), fun h => (by cases h), fun r' h => (by cases h)⟩
  · subst h0
    have hnc : r' ≠ .continue := by rintro rfl; rcases hA with ⟨_, _, h⟩ | ⟨_, h⟩ <;> cases h
    have hnb : r' ≠ .break := by rintro rfl; rcases hA with ⟨_, _, h⟩ | ⟨_, h⟩ <;> cases h
    refine ⟨fun h => (by cases h), fun h => ?_, fun h => ?_, fun r'' h1 _ _ => ?_⟩
    · cases h; exact absurd rfl hnc
    · cases h; exact absurd rfl hnb
    · cases h1; exact Or.inr ⟨r', rfl, hA, hk'⟩

/-! ## Re-basing with a tracked typing fact -/

/-- `B` (a fact about the current typing and pointers) persists along runs. -/
def BMono (H : Hooks σ) (B : Gam → Ptrs → Prop) : Prop :=
  ∀ (gw : List MlS) (Γ1 : Gam) (p1 : Ptrs) (Γ2 : Gam) (p2 : Ptrs) (s t : State σ),
    G guestC H Γ1 s → RunT guestC H gw Γ1 s Γ2 t p1 p2 → B Γ1 p1 → B Γ2 p2

theorem kpd_same {H : Hooks σ} (hH : HooksLawful guestC H) {gw : List MlS} {Γ0 : Gam}
    {s0 : State σ} {p0 : Ptrs} {fs : List Frame} {e mg : BitVec 64} {B : Gam → Ptrs → Prop}
    {u t : State σ} (h : KPd H gw Γ0 s0 p0 fs e mg u B) (hm : t.memory = u.memory)
    (hg : t.globals = u.globals) (hd : t.memaddrs = u.memaddrs) (hbe : t.be = u.be) :
    KPd H gw Γ0 s0 p0 fs e mg t B := by
  obtain ⟨hJ, Γ1, p1, hrun, hch, hE, hΦ, h112, hB⟩ := h
  exact ⟨jrNZ_congr hg hJ, Γ1, p1, runT_same hH hrun hm hg hd hbe, chainL_congr hm hg hch,
    chainE_congr hm hg hE, by rw [phi_congrMG hm hg]; exact hΦ, by rw [hm]; exact h112, hB⟩

theorem hoareG_rebaseQ {B : Gam → Ptrs → Prop} (hB : BMono HJ B) {u0 : State σ} {prog : ProgHOL 64}
    {Pl : Locs → Prop} (hu : KPd HJ gw Γ0 s0 p0 fs e mg u0 B)
    (h : ∀ Γ1 p1, RunT guestC HJ gw Γ0 s0 Γ1 u0 p0 p1 → B Γ1 p1 → ptrsOf u0 = some p1 →
      G guestC HJ Γ1 u0 → KP HJ gw Γ1 u0 p1 fs e mg u0 →
      HoareG σ guestCtx (fun t => t = u0) prog (PLQ (KP HJ gw Γ1 u0 p1 fs e mg) Pl)) :
    HoareG σ guestCtx (fun t => t = u0) prog
      (PLQ (fun t => KPd HJ gw Γ0 s0 p0 fs e mg t B) Pl) := by
  obtain ⟨hJ, Γ1, p1, hrun, hch, hE, hΦ, h112, hB1⟩ := hu
  have hG1 := hrun.2.2.2.2.2.1
  have hp1 := hrun.2.1
  have hself : KP HJ gw Γ1 u0 p1 fs e mg u0 :=
    ⟨hJ, Γ1, p1, runT_refl hG1 hp1, hch, hE, le_refl _, h112⟩
  refine hoareG_conseq (h Γ1 p1 hrun hB1 hp1 hG1 hself) (fun _ _ h => h) (fun ro t _ _ hq => ?_)
  refine plq_mono (fun t ht => ?_) (fun L h => h) hq
  obtain ⟨hJt, Γ2, p2, hrun2, hch2, hE2, hΦ2, h112t⟩ := ht
  exact ⟨hJt, Γ2, p2, runT_trans hrun hrun2, hch2, hE2, le_trans hΦ2 hΦ, h112t,
    hB gw Γ1 p1 Γ2 p2 u0 t hG1 hrun2 hB1⟩

end

end InitECandidate.Solver.MemSafe.D0

#print axioms InitECandidate.Solver.MemSafe.D0.plq_decCall
#print axioms InitECandidate.Solver.MemSafe.D0.plq_call
#print axioms InitECandidate.Solver.MemSafe.D0.plq_while
#print axioms InitECandidate.Solver.MemSafe.D0.hoareG_rebaseQ
