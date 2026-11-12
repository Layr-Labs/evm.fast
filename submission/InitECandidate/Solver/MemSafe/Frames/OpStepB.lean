import InitECandidate.Solver.MemSafe.Frames.GkHoare

/-!
# Bounded handler step specs (frames12)

The memory handlers are memory-safe only while the running frame's `GAS_LEFT ≠ WORD_MAX`
(`charge_with_memory`'s precondition, design §2.4: a saturated memory cost must make
`charge_gas` fail). `PreOpX … M` bounds `Φ ≥ GAS_LEFT + 1` by `M`, so this holds for `M < 2^64`,
but `OpStep` quantifies over every `M`: for `M ≥ 2^64` the memory handlers' `OpStep` is false
(a state with `GAS_LEFT = 2^64 - 1` satisfies `PreOpX M`, and `op_mstore` then writes outside
frame memory).

* **`OpStepB σ X H f`** := `∀ M, M < 2^64 → JSpec … (PreOpX … M) (QStepX …)`; `opStepB_of`.
* **`gk_opStepB`**: `gk_opStep` whose body proof may assume `Φ s0 < 2^64`.
* `dchk_soundM`, **`disp_jSpecM`**: `dchk_sound` / `disp_jSpec` at one fixed `M`, from the handlers'
  specs at that `M`.
-/

set_option autoImplicit false
set_option maxRecDepth 100000

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Types

variable {σ : Type} {X : Ctx 64}

/-- **A handler's bounded `run_frames` step spec** (for every bound `M < 2^64`). -/
def OpStepB (σ : Type) (X : Ctx 64) (H : Hooks σ) (f : MlS) : Prop :=
  ∀ M : Nat, M < 2 ^ 64 → JSpec σ X guestC H f
    (fun vs s Γ => PreOpX guestC tEV tCK GP GR M vs s Γ) (QStepX guestC tEV tCK GP GR)

theorem opStepB_of {H : Hooks σ} {f : MlS} (h : OpStep σ X H f) : OpStepB σ X H f :=
  fun M _ => h M

section
variable {H : Hooks σ}

/-- **`gk_opStep` for `OpStepB`**: the body proof may use `Φ s0 < 2^64`. -/
theorem gk_opStepB (hC : X.code.lookup = guestCode) (hH : HooksLawful guestC H) {gw : List MlS}
    {f : MlS} {ps : List (MlS × ShapeHOL)} {body : ProgHOL 64} {sh : ShapeHOL}
    (hcode : guestCode f = some (ps, body, sh)) {b : Bool}
    (hbody : ∀ (Γ0 : Gam) (s0 : State σ) (p0 : Ptrs) (fs : List Frame) (e c : BitVec 64)
      (rest : List Frame), fs = (e, c) :: rest → Ready s0 → Phi s0 < 2 ^ 64 → GK H gw Γ0 s0 p0 fs 0 s0 →
        HoareG σ X (fun t => t = s0) body (GQ (GK H gw Γ0 s0 p0 fs) b)) :
    OpStepB σ X H f := by
  intro M hM vs body' callee rs hl s0 hs0 hloc r hr hg hna Γ hG hpre
  obtain ⟨⟨⟨fs, hch, hE⟩, hΦM, hrdy⟩, hJ⟩ := hpre
  rw [hC] at hl
  obtain ⟨ps', hps, -⟩ := lookupCode_k hl
  rw [hcode] at hps
  simp only [Option.some.injEq, Prod.mk.injEq] at hps
  obtain ⟨-, rfl, -⟩ := hps
  obtain ⟨e, c, rest, hfs, -, -, -⟩ := hch.chain
  obtain ⟨p, hps0, -⟩ := id hG
  have hk0 : GK H gw Γ s0 p fs 0 s0 :=
    ⟨⟨hJ, Γ, p, runT_refl hG hps0, hch, hE⟩, by omega, Or.inl rfl⟩
  have H0 := hbody Γ s0 p fs e c rest hfs hrdy (by omega) hk0 s0 hs0 rfl (by rw [hr]; exact hg)
  rw [hr] at H0
  obtain ⟨⟨hJt, Γ', p', hrun, hch', hE'⟩, hΦt, hactt⟩ := H0.2 r rfl hna
  have ha0 : act s0 = 1 := by unfold act; rw [if_pos hrdy]
  refine ⟨Γ', hrun.2.2.2.2.2.1, ⟨fun v hv => ?_, fun v hv => ?_⟩, fun _ _ => hJt, fun _ _ => hJt,
    fun _ _ => keepH_of_runT hrun, fun _ _ => keepH_of_runT hrun,
    fun _ _ => rootK_of_same hch.chain hch'.chain, fun _ _ => rootK_of_same hch.chain hch'.chain,
    fun _ _ => bkeep_of_runT hrun, fun _ _ => bkeep_of_runT hrun⟩
  · subst hv
    exact ⟨⟨fs, hch', hE'⟩, by simp only [rbd] at hΦt; omega⟩
  · subst hv
    refine ⟨⟨fs, hch', hE'⟩, ?_⟩
    simp only [rbd] at hΦt
    rcases hactt with h | h
    · rw [h, ha0]; omega
    · omega

end

section sound
variable {H : Hooks σ} {M : Nat} {Γ : Gam} {s0 : State σ}

/-- `dchk_sound` at a fixed bound `M` (handler specs needed at `M` only). -/
theorem dchk_soundM (hH : HooksLawful guestC H) {hs : List MlS} (hO : ∀ f ∈ hs, JSpec σ X guestC H f (fun vs s Γ => PreOpX guestC tEV tCK GP GR M vs s Γ)
      (QStepX guestC tEV tCK GP GR))
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
        have hspec := hO f hf
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
      · refine hoareG_seq (R := DQ H s0 Γ) (dchk_soundM hH hO hG0 hP0 p hp u0 hu) ?_ ?_
        · intro r t _ hr _ hq
          exact ⟨fun h0 => absurd h0 hr, hq.2⟩
        · exact hoareG_pt fun u hq' => dchk_soundM hH hO hG0 hP0 q hq u (hq'.1 rfl)
  | .ite c p q, h, u0, hu => by
      simp only [dchk, Bool.and_eq_true] at h
      refine hoareG_ite ?_ ?_
      · exact hoareG_pre (dchk_soundM hH hO hG0 hP0 p h.1 u0 hu) fun _ _ h => h.1
      · exact hoareG_pre (dchk_soundM hH hO hG0 hP0 q h.2 u0 hu) fun _ _ h => h.1
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
theorem disp_jSpecM (hC : X.code.lookup = guestCode) (hH : HooksLawful guestC H) {hs : List MlS}
    (hO : ∀ f ∈ hs, JSpec σ X guestC H f (fun vs s Γ => PreOpX guestC tEV tCK GP GR M vs s Γ)
      (QStepX guestC tEV tCK GP GR)) {ps : List (MlS × ShapeHOL)} {body : ProgHOL 64}
    {sh : ShapeHOL} (hcode : guestCode (nm "op_dispatch") = some (ps, body, sh))
    (hchk : dchk hs body = true) :
    JSpec σ X guestC H (nm "op_dispatch")
      (fun vs s Γ => vs.length = 1 ∧ PreOpX guestC tEV tCK GP GR M vs s Γ)
      (QStepX guestC tEV tCK GP GR) := by
  intro vs body' callee rs hl s0 hs0 hloc r hr hg hna Γ hG ⟨_, hpre⟩
  rw [hC] at hl
  obtain ⟨ps', hps, -⟩ := lookupCode_k hl
  rw [hcode] at hps
  simp only [Option.some.injEq, Prod.mk.injEq] at hps
  obtain ⟨-, rfl, -⟩ := hps
  have H0 := dchk_soundM (M := M) hH hO hG hpre body hchk s0 ⟨rfl, rfl, rfl, rfl⟩ s0 hs0 rfl
    (by rw [hr]; exact hg)
  rw [hr] at H0
  exact H0.2 r rfl hna

end sound

end InitECandidate.Solver.MemSafe.Frames

#print axioms InitECandidate.Solver.MemSafe.Frames.opStepB_of
#print axioms InitECandidate.Solver.MemSafe.Frames.gk_opStepB
#print axioms InitECandidate.Solver.MemSafe.Frames.dchk_soundM
#print axioms InitECandidate.Solver.MemSafe.Frames.disp_jSpecM
