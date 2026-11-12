import InitECandidate.Solver.MemSafe.Frames.GChkKC

/-!
# `op_dispatch` from the handlers' step specs (frames11, task 5)

`op_dispatch(op)` is a tree of `if`s on the local `op` whose leaves are `op_X(args); return 0`,
`throw EvmErr 5` or `skip`. The decidable check **`dchk hs p`** accepts exactly these shapes, with
every called handler in `hs`. **`dchk_sound`**: if every handler of `hs` has the step spec
**`OpStep`** (`JSpec … (PreOpX … M) (QStepX …)`), an accepted body run from a state equal (up to
locals) to an entry state `s0` with `PreOpX` ends with `QStepX` relative to `s0`.
-/

set_option autoImplicit false
set_option maxRecDepth 100000

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Types

variable {σ : Type} {X : Ctx 64}

/-- **A handler's `run_frames` step spec** (for every bound `M`). -/
def OpStep (σ : Type) (X : Ctx 64) (H : Hooks σ) (f : MlS) : Prop :=
  ∀ M : Nat, JSpec σ X guestC H f (fun vs s Γ => PreOpX guestC tEV tCK GP GR M vs s Γ)
    (QStepX guestC tEV tCK GP GR)

/-- `f(args); return e` with `f ∈ hs`. -/
def isCallRet (hs : List MlS) (p q : ProgHOL 64) : Bool :=
  match p, q with
  | .call (some (none, none)) f _, .return _ => decide (f ∈ hs)
  | _, _ => false

/-- A `raise` (what follows it is dead code). -/
def isRaise : ProgHOL 64 → Bool
  | .raise _ _ => true
  | _ => false

/-- **The dispatch check.** -/
def dchk (hs : List MlS) : ProgHOL 64 → Bool
  | .skip => true
  | .raise _ _ => true
  | .seq p q => isCallRet hs p q || isRaise p || (dchk hs p && dchk hs q)
  | .ite _ p q => dchk hs p && dchk hs q
  | _ => false

theorem isRaise_eq {p : ProgHOL 64} (h : isRaise p = true) : ∃ x e, p = .raise x e := by
  unfold isRaise at h
  split at h
  · exact ⟨_, _, rfl⟩
  · cases h

theorem isCallRet_eq {hs : List MlS} {p q : ProgHOL 64} (h : isCallRet hs p q = true) :
    ∃ f args e, p = .call (some (none, none)) f args ∧ q = .return e ∧ f ∈ hs := by
  unfold isCallRet at h
  split at h
  · exact ⟨_, _, _, rfl, rfl, of_decide_eq_true h⟩
  · cases h

/-- Equal up to locals. -/
def SameS (s0 u : State σ) : Prop :=
  u.memory = s0.memory ∧ u.globals = s0.globals ∧ u.memaddrs = s0.memaddrs ∧ u.be = s0.be

section sound
variable {H : Hooks σ} {M : Nat} {Γ : Gam} {s0 : State σ}

/-- The dispatch post. -/
def DQ (H : Hooks σ) (s0 : State σ) (Γ : Gam) (ro : Option (PanSemResultExact 64)) (t : State σ) :
    Prop :=
  (ro = none → SameS s0 t) ∧
    ∀ r, ro = some r → ¬ Abortive r → ∃ Γ', G guestC H Γ' t ∧ QStepX guestC tEV tCK GP GR [] s0 Γ r t Γ'

theorem qStepX_congr {vs : List (ValueHOL 64)} {s : State σ} {Γ0 Γ' : Gam}
    {r : PanSemResultExact 64} {t t' : State σ} (hm : t'.memory = t.memory)
    (hg : t'.globals = t.globals) (h : QStepX guestC tEV tCK GP GR vs s Γ0 r t Γ') :
    QStepX guestC tEV tCK GP GR vs s Γ0 r t' Γ' := by
  obtain ⟨⟨h1, h2⟩, h3, h4, h5, h6, h7, h8, h9, h10⟩ := h
  refine ⟨⟨fun v hv => ?_, fun v hv => ?_⟩, fun v hv => jrNZ_congr hg (h3 v hv),
    fun v hv => jrNZ_congr hg (h4 v hv), fun v hv => keepH_congr rfl hg (h5 v hv),
    fun v hv => keepH_congr rfl hg (h6 v hv), fun v hv => rootK_congr rfl rfl hm hg (h7 v hv),
    fun v hv => rootK_congr rfl rfl hm hg (h8 v hv), fun v hv => bkeep_congr rfl hm (h9 v hv),
    fun v hv => bkeep_congr rfl hm (h10 v hv)⟩
  · obtain ⟨hx, hΦ⟩ := h1 v hv
    exact ⟨chainX_congr hm hg hx, by rw [phi_congrMG hm hg]; exact hΦ⟩
  · obtain ⟨hx, hΦ⟩ := h2 v hv
    exact ⟨chainX_congr hm hg hx, by rw [phi_congrMG hm hg, act_congr hm hg]; exact hΦ⟩

theorem dq_loc (hH : HooksLawful guestC H) {ro : Option (PanSemResultExact 64)} {t : State σ}
    (h : DQ H s0 Γ ro t) (l : Locs) : DQ H s0 Γ ro { t with locals := l } := by
  refine ⟨fun h0 => h.1 h0, fun r hr hna => ?_⟩
  obtain ⟨Γ', hG', hq⟩ := h.2 r hr hna
  exact ⟨Γ', G_congr (s := t) hH rfl rfl rfl rfl hG', qStepX_congr (t := t) rfl rfl hq⟩

/-- `QStepX` depends on its source state only through `Φ`. -/
theorem qStepX_src {vs vs' : List (ValueHOL 64)} {s s' : State σ} {Γ0 Γ1 Γ' : Gam}
    {r : PanSemResultExact 64} {t : State σ} (hΓ : Γ1 = Γ0) (hm : s'.memory = s.memory)
    (hg : s'.globals = s.globals) (h : QStepX guestC tEV tCK GP GR vs s Γ0 r t Γ') :
    QStepX guestC tEV tCK GP GR vs' s' Γ1 r t Γ' := by
  subst hΓ
  obtain ⟨⟨h1, h2⟩, h3, h4, h5, h6, h7, h8, h9, h10⟩ := h
  refine ⟨⟨fun v hv => ?_, fun v hv => ?_⟩, h3, h4, fun v hv => keepH_congr hg rfl (h5 v hv),
    fun v hv => keepH_congr hg rfl (h6 v hv), fun v hv => rootK_congr hm hg rfl rfl (h7 v hv),
    fun v hv => rootK_congr hm hg rfl rfl (h8 v hv), fun v hv => bkeep_congr hm rfl (h9 v hv),
    fun v hv => bkeep_congr hm rfl (h10 v hv)⟩
  · rw [phi_congrMG hm hg]; exact h1 v hv
  · rw [phi_congrMG hm hg]; exact h2 v hv

theorem dq_raise (hH : HooksLawful guestC H) (hG0 : G guestC H Γ s0)
    (hP0 : PreOpX guestC tEV tCK GP GR M [] s0 Γ) {x : MlS} {v : ValueHOL 64} {s : State σ}
    (hu : SameS s0 s) : DQ H s0 Γ (some (.exception x v)) (emptyLocalsHOLFinite s) := by
  obtain ⟨hm, hg, hd, hbe⟩ := hu
  refine ⟨fun h0 => (by cases h0), fun r hr _ => ?_⟩
  cases hr
  obtain ⟨⟨hx, -, hrdy⟩, hJ⟩ := hP0
  have hm' : (emptyLocalsHOLFinite s).memory = s0.memory := hm
  have hg' : (emptyLocalsHOLFinite s).globals = s0.globals := hg
  refine ⟨Γ, G_congr hH hm' hg' hd hbe hG0, ⟨fun v hv => (by cases hv), fun v hv => ?_⟩,
    fun v hv => (by cases hv), fun v hv => jrNZ_congr hg' hJ, fun v hv => (by cases hv),
    fun v hv => keepH_refl hg', fun v hv => (by cases hv),
    fun v hv => rootK_congr (s := s0) (t := s0) rfl rfl hm' hg' (rootK_refl s0),
    fun v hv => (by cases hv), fun v hv => bkeep_of_mem hm'⟩
  refine ⟨chainX_congr hm' hg' hx, ?_⟩
  rw [phi_congrMG hm' hg', act_congr hm' hg']
  unfold act; rw [if_pos hrdy]

/-- **The dispatch check is sound.** -/
theorem dchk_sound (hH : HooksLawful guestC H) {hs : List MlS} (hO : ∀ f ∈ hs, OpStep σ X H f)
    (hG0 : G guestC H Γ s0) (hP0 : PreOpX guestC tEV tCK GP GR M [] s0 Γ) :
    ∀ p : ProgHOL 64, dchk hs p = true → ∀ u0 : State σ, SameS s0 u0 →
      HoareG σ X (fun t => t = u0) p (DQ H s0 Γ)
  | .skip, _, u0, hu => hoareG_skip fun s _ hs => by subst hs; exact ⟨fun _ => hu, fun r hr => by cases hr⟩
  | .raise x e, _, u0, hu => hoareG_raise fun s _ hs v _ => by subst hs; exact dq_raise hH hG0 hP0 hu
  | .seq p q, h, u0, hu => by
      simp only [dchk, Bool.or_eq_true, Bool.and_eq_true] at h
      rcases h with (h | h) | ⟨hp, hq⟩
      rotate_left
      · obtain ⟨x, e, rfl⟩ := isRaise_eq h
        refine hoareG_seq (R := fun ro t => ro ≠ none ∧ DQ H s0 Γ ro t) ?_
          (fun r t _ _ _ h => h.2) (hoareG_false fun _ _ h => h.1 rfl)
        exact hoareG_raise fun s _ hs v _ => by
          subst hs; exact ⟨by simp, dq_raise hH hG0 hP0 hu⟩
      rotate_right
      · obtain ⟨f, args, e, rfl, rfl, hf⟩ := isCallRet_eq h
        have hspec := hO f hf M
        refine hoareG_seq (R := fun ro t => (ro = none → ∃ Γ', G guestC H Γ' t ∧
            QStepX guestC tEV tCK GP GR [] s0 Γ (.returned (.val (.word 0))) t Γ') ∧
            ∀ r, ro = some r → ¬ Abortive r → ∃ Γ', G guestC H Γ' t ∧
              QStepX guestC tEV tCK GP GR [] s0 Γ r t Γ') ?_ ?_ ?_
        · obtain ⟨hm, hg, hd, hbe⟩ := hu
          have hGu : ∀ callee, G guestC H Γ (callEntryStateHOLFinite u0 callee) := fun callee =>
            G_congr hH hm hg hd hbe hG0
          have hPu : ∀ callee vs, PreOpX guestC tEV tCK GP GR M vs (callEntryStateHOLFinite u0 callee) Γ :=
            fun callee vs => by
              obtain ⟨⟨hx, hΦ, hrdy⟩, hJ⟩ := hP0
              have hm' : (callEntryStateHOLFinite u0 callee).memory = s0.memory := hm
              have hg' : (callEntryStateHOLFinite u0 callee).globals = s0.globals := hg
              refine ⟨⟨chainX_congr hm' hg' hx, by rw [phi_congrMG hm' hg']; exact hΦ, ?_⟩,
                jrNZ_congr hg' hJ⟩
              unfold Ready DoneZ RunNZ at hrdy ⊢
              rw [hm', gword_congr hg', gword_congr hg']; exact hrdy
          refine hoareG_callD hspec ?_ ?_
          · intro s _ hs vs _ callee v st hR _
            subst hs
            obtain ⟨Γ', hG', hq0⟩ := hR (by simp [Good]) (not_abortive_ret v) Γ (hGu callee)
              (hPu callee vs)
            have hq := qStepX_src (s := callEntryStateHOLFinite s callee) (vs := vs) (Γ0 := Γ) (vs' := []) (s' := s0)
              (Γ1 := Γ) rfl hm.symm hg.symm hq0
            refine ⟨fun _ => ⟨Γ', G_congr (s := st) hH rfl rfl rfl rfl hG', ?_⟩, fun r hr => by cases hr⟩
            obtain ⟨⟨h1, -⟩, h3, -, h5, -, h7, -, h9, -⟩ := qStepX_congr (t := st) (t' := { st with locals := s.locals })
              rfl rfl hq
            exact ⟨⟨fun v' _ => h1 v rfl, fun v' hv' => (by cases hv')⟩,
              fun _ _ => h3 v rfl, fun v' hv' => (by cases hv'), fun _ _ => h5 v rfl, fun v' hv' => (by cases hv'),
              fun _ _ => h7 v rfl, fun v' hv' => (by cases hv'), fun _ _ => h9 v rfl,
              fun v' hv' => (by cases hv')⟩
          · intro s _ hs vs _ callee r st hR _ habn
            subst hs
            refine ⟨fun h0 => (by cases h0), fun r' hr' hna => ?_⟩
            simp only [Option.some.injEq] at hr'; subst hr'
            obtain ⟨Γ', hG', hq0⟩ := hR (good_of_abn habn) hna Γ (hGu callee) (hPu callee vs)
            have hq := qStepX_src (s := callEntryStateHOLFinite s callee) (vs := vs) (Γ0 := Γ) (vs' := []) (s' := s0)
              (Γ1 := Γ) rfl hm.symm hg.symm hq0
            exact ⟨Γ', G_congr (s := st) hH rfl rfl rfl rfl hG', qStepX_congr (t := st) rfl rfl hq⟩
        · intro r t _ hr _ hR
          exact ⟨fun h0 => absurd h0 hr, hR.2⟩
        · refine hoareG_return fun s _ hR v _ => ?_
          refine ⟨fun h0 => (by cases h0), fun r hr _ => ?_⟩
          cases hr
          obtain ⟨Γ', hG', hq⟩ := hR.1 rfl
          refine ⟨Γ', G_congr (s := s) hH rfl rfl rfl rfl hG', ?_⟩
          obtain ⟨⟨h1, -⟩, h3, -, h5, -, h7, -, h9, -⟩ := qStepX_congr (t := s) (t' := emptyLocalsHOLFinite s) rfl rfl hq
          exact ⟨⟨fun v' _ => h1 _ rfl, fun v' hv' => (by cases hv')⟩, fun _ _ => h3 _ rfl,
            fun v' hv' => (by cases hv'), fun _ _ => h5 _ rfl, fun v' hv' => (by cases hv'),
            fun _ _ => h7 _ rfl, fun v' hv' => (by cases hv'), fun _ _ => h9 _ rfl,
            fun v' hv' => (by cases hv')⟩
      · refine hoareG_seq (R := DQ H s0 Γ) (dchk_sound hH hO hG0 hP0 p hp u0 hu) ?_ ?_
        · intro r t _ hr _ hq
          exact ⟨fun h0 => absurd h0 hr, hq.2⟩
        · exact hoareG_pt fun u hq' => dchk_sound hH hO hG0 hP0 q hq u (hq'.1 rfl)
  | .ite c p q, h, u0, hu => by
      simp only [dchk, Bool.and_eq_true] at h
      refine hoareG_ite ?_ ?_
      · exact hoareG_pre (dchk_sound hH hO hG0 hP0 p h.1 u0 hu) fun _ _ h => h.1
      · exact hoareG_pre (dchk_sound hH hO hG0 hP0 q h.2 u0 hu) fun _ _ h => h.1
  | .dec _ _ _ _, h, _, _ => by simp [dchk] at h
  | .assign _ _ _, h, _, _ => by simp [dchk] at h
  | .primitive _ _ _, h, _, _ => by simp [dchk] at h
  | .store _ _, h, _, _ => by simp [dchk] at h
  | .store32 _ _, h, _, _ => by simp [dchk] at h
  | .storeByte _ _, h, _, _ => by simp [dchk] at h
  | .while _ _, h, _, _ => by simp [dchk] at h
  | .break, h, _, _ => by simp [dchk] at h
  | .continue, h, _, _ => by simp [dchk] at h
  | .call _ _ _, h, _, _ => by simp [dchk] at h
  | .decCall _ _ _ _ _, h, _, _ => by simp [dchk] at h
  | .extCall _ _ _ _ _, h, _, _ => by simp [dchk] at h
  | .return _, h, _, _ => by simp [dchk] at h
  | .shMemLoad _ _ _ _, h, _, _ => by simp [dchk] at h
  | .shMemStore _ _ _, h, _, _ => by simp [dchk] at h
  | .tick, h, _, _ => by simp [dchk] at h
  | .annot _ _, h, _, _ => by simp [dchk] at h

/-- **`op_dispatch`'s step spec** from its body's check and the handlers' step specs. -/
theorem disp_jSpec (hC : X.code.lookup = guestCode) (hH : HooksLawful guestC H) {hs : List MlS}
    (hO : ∀ f ∈ hs, OpStep σ X H f) {ps : List (MlS × ShapeHOL)} {body : ProgHOL 64}
    {sh : ShapeHOL} (hcode : guestCode (nm "op_dispatch") = some (ps, body, sh))
    (hchk : dchk hs body = true) (M : Nat) :
    JSpec σ X guestC H (nm "op_dispatch")
      (fun vs s Γ => vs.length = 1 ∧ PreOpX guestC tEV tCK GP GR M vs s Γ)
      (QStepX guestC tEV tCK GP GR) := by
  intro vs body' callee rs hl s0 hs0 hloc r hr hg hna Γ hG ⟨_, hpre⟩
  rw [hC] at hl
  obtain ⟨ps', hps, -⟩ := lookupCode_k hl
  rw [hcode] at hps
  simp only [Option.some.injEq, Prod.mk.injEq] at hps
  obtain ⟨-, rfl, -⟩ := hps
  have H0 := dchk_sound (M := M) hH hO hG hpre body hchk s0 ⟨rfl, rfl, rfl, rfl⟩ s0 hs0 rfl
    (by rw [hr]; exact hg)
  rw [hr] at H0
  exact H0.2 r rfl hna

end sound

end InitECandidate.Solver.MemSafe.Frames

#print axioms InitECandidate.Solver.MemSafe.Frames.dchk_sound
#print axioms InitECandidate.Solver.MemSafe.Frames.disp_jSpec
