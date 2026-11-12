import InitECandidate.Solver.MemSafe.Rcpt.Main3

set_option autoImplicit false

/-!
# `encode_receipt`: the bloom block, `logs_bloom`, the bloom and the logs
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Rcpt
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers
open InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Aw

variable {σ : Type} {X : Ctx 64}

theorem hdr256 : hdrLen 256 = 3 := by
  have h1 : beLen 256 = 2 := by
    rw [beLen_pos (by omega)]
    have : beLen (256 / 256) = 1 := by
      rw [show 256 / 256 = 1 from rfl, beLen_pos (by omega), show 1 / 256 = 0 from rfl, beLen_zero]
    omega
  unfold hdrLen
  rw [if_neg (by omega), h1]

/-- The floor after `bloom = alloc(256)` returned `v`. -/
def FlOf (Fl : Nat) (v : ValueHOL 64) : Nat :=
  match v with
  | .val (.word q) => max Fl (q.toNat + 256)
  | _ => Fl

theorem flOf_ge (Fl : Nat) (v : ValueHOL 64) : Fl ≤ FlOf Fl v := by
  unfold FlOf
  split
  · exact Nat.le_max_left _ _
  · exact Nat.le_refl _

theorem rcpt_bloom (hC : X.code.lookup = guestCode) (hA : AlignedDom X) {s : State σ} {Γ : Gam}
    {p : Ptrs} {h0 : Nat} (hK : AwOK (aOf s Γ p h0)) {logs CG : BitVec 64} {B S : Nat}
    (hLB : CSumm σ X guestC (Hooks.guestHooksR (σ := σ)) (nm "logs_bloom") bloomSig [])
    (hLK : LogsK Γ p s.memory h0 logs) (hL : Layout guestC p Γ)
    (hSe : S = Sk s.memory logs (lgN s.memory logs))
    (hBp : p.hp ≤ B) (hBE : B + S + 416 ≤ heapEnd) (P1 : Nat) (hP1 : B + 11 ≤ P1) (hP1' : P1 ≤ B + 20) :
    HoareG σ X (IPre (RI (aOf s Γ p h0) (B + S + 416))
      (fun m => LK logs CG B m ∧ LW m startN (B + 1) ∧ LW m Aw.pN P1)) erBloom
      (IQ (RI (aOf s Γ p h0) (B + S + 416)) (fun _ => True) (KRet B S)) := by
  have hS : IStable (RI (aOf s Γ p h0) (B + S + 416)) := ri_stable hK (B + S + 416)
  have hhe : heapEnd < 2 ^ 40 := by decide
  unfold erBloom
  refine hoareG_decCallSw (I' := fun v => RI (aOf s Γ p h0) (FlOf (B + S + 416) v)) (L' := fun _ _ => True) hS
    (fun v t h => ri_mono h (flOf_ge _ v)) (isp_alloc hK hC _) ?_ ?_ (fun _ _ _ _ => trivial)
  · intro s' hs' hP vs hvs callee
    rw [evs_cons (ev_cw _ 256) evs_nil] at hvs
    cases hvs
    exact ⟨_, rfl⟩
  intro s' vs v st hs' hL' hvs hI hRet hsh
  rw [evs_cons (ev_cw _ 256) evs_nil] at hvs
  cases hvs
  obtain ⟨n, q, p'', hvs', rfl, hq1, hq2, hp'', hq3, hq4, hq5⟩ := hRet
  simp only [List.cons.injEq, and_true, ValueHOL.val.injEq, HolWordLab.word.injEq] at hvs'
  subst hvs'
  have h256 : (BitVec.ofNat 64 256).toNat = 256 := toNat_ofNat_lt (by omega)
  rw [h256] at hq3
  have hq5' : p.hp ≤ q.toNat := hq5
  have hFl2 : FlOf (B + S + 416) (.val (.word q)) = max (B + S + 416) (q.toNat + 256) := rfl
  have hIq : RI (aOf s Γ p h0) (FlOf (B + S + 416) (.val (.word q))) st := by
    obtain ⟨pf, hpf, hfl⟩ := hI.2.2
    rw [hp''] at hpf
    cases hpf
    exact ⟨hI.1, hI.2.1, p'', hp'', by rw [hFl2]; exact max_le hfl (by omega)⟩
  generalize hFl : FlOf (B + S + 416) (.val (.word q)) = Fl2 at hIq ⊢
  have hS2 : IStable (RI (aOf s Γ p h0) Fl2) := ri_stable hK Fl2
  have hFl2q : q.toNat + 256 ≤ Fl2 := by rw [← hFl, hFl2]; exact Nat.le_max_right _ _
  have hFl2b : B + S + 416 ≤ Fl2 := by rw [← hFl, hFl2]; exact Nat.le_max_left _ _
  refine hoareG_pre (P := IPre (RI (aOf s Γ p h0) Fl2)
    (fun m => (LK logs CG B m ∧ LW m startN (B + 1) ∧ LW m Aw.pN P1) ∧ LB m bloomN q)) ?_
    (fun t _ ht => by
      subst ht
      exact ⟨hS2 hIq rfl rfl rfl rfl, ⟨lk_keep hL'.1 (by decide) (by decide) (by decide),
        lw_keep hL'.2.1 (by decide), lw_keep hL'.2.2 (by decide)⟩, lb_set⟩)
  have hh : h0 ≤ p.hp := hK.hle
  have hord := hK.hord
  have hpe : p.hp ≤ heapEnd := by unfold Ptrs.Ordered at hord; omega
  -- logs_bloom(logs, bloom)
  refine hoareG_seqA (L2 := fun m => (LK logs CG B m ∧ LW m startN (B + 1) ∧ LW m Aw.pN P1) ∧
      LB m bloomN q) (hoareG_callAs hS2 (isp_bloom hK hLB Fl2) ?_ (fun _ _ _ _ hL _ _ => hL)) ?_
  · intro s3 hs3 hP3 vs hvs callee
    obtain ⟨v1, v2, rfl, e1, e2⟩ := evs_two hvs
    rw [ev_lb hP3.2.1.1.1] at e1
    rw [ev_lb hP3.2.2] at e2
    cases e1
    cases e2
    obtain ⟨pf, hpf, hfl⟩ := hP3.1.2.2
    refine ⟨⟨by simp [bloomSig], pf, ?_, ?_⟩, q, by simp [argW, wordOf], hq5', hq2⟩
    · rw [Frames.ptrsOf_congr (s := s3) (s' := callEntryStateHOLFinite s3 callee) rfl]
      exact hpf
    · intro i pt v hpt hv
      rcases i with _ | _ | i
      · simp [bloomSig] at hpt
        subst hpt
        trivial
      · simp [bloomSig] at hpt
        subst hpt
        simp at hv
        subst hv
        exact ⟨q, rfl, by show h0 ≤ _; omega, by omega⟩
      · simp [bloomSig] at hpt
  -- w = rlp_encode_bytes(p, bloom, 256)
  refine hoareG_seqA (L2 := fun m => ((LK logs CG B m ∧ LW m startN (B + 1) ∧ LW m Aw.pN P1) ∧
      LB m bloomN q) ∧ LW m wN 259) (hoareG_callAsA hS2 (isp_bytes hK hC hA Fl2) ?_ ?_) ?_
  · intro s3 hs3 hP3 vs hvs callee
    obtain ⟨v1, v2, v3, rfl, e1, e2, e3⟩ := evs_three hvs
    rw [ev_lwn hP3.2.1.2.2] at e1
    rw [ev_cw] at e3
    cases e1
    cases e3
    refine ⟨_, _, rfl, rfl, ?_, ?_⟩
    · show p.hp ≤ _
      rw [toNat_ofNat_lt (by omega)]
      omega
    · rw [toNat_ofNat_lt (by omega), toNat_ofNat_lt (by omega), hdr256]
      omega
  · intro s3 vs v st hL3 hvs hRet hval
    obtain ⟨v1, v2, v3, rfl, e1, e2, e3⟩ := evs_three hvs
    rw [ev_cw] at e3
    cases e3
    obtain ⟨k, hk, k1, k2, k3⟩ := hRet (BitVec.ofNat 64 256) (by simp [argW, wordOf])
    subst hk
    rw [toNat_ofNat_lt (by omega), hdr256] at k2 k3
    have hk259 : k = 259 := k3 (by omega)
    subst hk259
    exact ⟨⟨⟨lk_keep hL3.1.1 (by decide) (by decide) (by decide), lw_keep hL3.1.2.1 (by decide),
      lw_keep hL3.1.2.2 (by decide)⟩, lb_keep hL3.2 (by decide)⟩, lw_set⟩
  -- p = p + w
  refine hoareG_seqA (L2 := fun m => (LK logs CG B m ∧ LW m startN (B + 1) ∧ LW m Aw.pN (P1 + 259)) ∧
      LB m bloomN q) ?_ ?_
  · refine hoareG_assignA hS2 fun s3 _ hL v hv => ?_
    rw [ev_add2 (ev_lwn hL.1.1.2.2) (ev_lwn hL.2), ofNat_add_ofNat'] at hv
    cases hv
    exact ⟨⟨lk_keep hL.1.1.1 (by decide) (by decide) (by decide), lw_keep hL.1.1.2.1 (by decide), lw_set⟩,
      lb_keep hL.1.2 (by decide)⟩
  -- w = encode_logs(p, logs)
  refine hoareG_seqA (L2 := fun m => ((LK logs CG B m ∧ LW m startN (B + 1) ∧ LW m Aw.pN (P1 + 259)) ∧
      LB m bloomN q) ∧ ∃ k, LW m wN k ∧ 1 ≤ k ∧ k ≤ 9 + S) ?_ ?_
  · refine hoareG_callAsA hS2 (isp_encLogs hK hC hA Fl2 S) ?_ ?_
    · intro s3 hs3 hP3 vs hvs callee
      obtain ⟨v1, v2, rfl, e1, e2⟩ := evs_two hvs
      rw [ev_lwn hP3.2.1.2.2] at e1
      rw [ev_lb hP3.2.1.1.1] at e2
      cases e1
      cases e2
      have hmo : ModifiesOnly (fun x => WCell guestC Γ x ∨ ¬ p.Allocated x.toNat) s.memory s3.memory :=
        hP3.1.2.1
      obtain ⟨hEnv, hSk⟩ := env_of hLK hord hh hL hmo (D := BitVec.ofNat 64 (P1 + 259))
        (by rw [toNat_ofNat_lt (by omega)]; omega) (by rw [toNat_ofNat_lt (by omega), ← hSe]; omega)
      refine ⟨_, logs, rfl, rfl, hEnv, ?_, by show Sk s3.memory logs (lgN s3.memory logs) = S; rw [hSk, hSe]⟩
      show p.hp ≤ _
      rw [toNat_ofNat_lt (by omega)]
      omega
    · intro s3 vs v st hL3 hvs hRet hval
      obtain ⟨v1, v2, rfl, e1, e2⟩ := evs_two hvs
      obtain ⟨k, hk, k1, k2⟩ := hRet
      subst hk
      exact ⟨⟨⟨lk_keep hL3.1.1 (by decide) (by decide) (by decide), lw_keep hL3.1.2.1 (by decide),
        lw_keep hL3.1.2.2 (by decide)⟩, lb_keep hL3.2 (by decide)⟩, k, lw_set, k1, k2⟩
  -- p = p + w, then the end
  refine hoareG_seqA (L2 := fun m => ∃ P3, ((LK logs CG B m ∧ LW m startN (B + 1) ∧ LW m Aw.pN P3) ∧
      (B + 12 ≤ P3 ∧ P3 ≤ B + S + 288))) ?_ ?_
  · refine hoareG_assignA hS2 fun s3 _ hL v hv => ?_
    obtain ⟨⟨hL1, hb⟩, k, hw, k1, k2⟩ := hL
    rw [ev_add2 (ev_lwn hL1.2.2) (ev_lwn hw), ofNat_add_ofNat'] at hv
    cases hv
    exact ⟨P1 + 259 + k, ⟨lk_keep hL1.1 (by decide) (by decide) (by decide),
      lw_keep hL1.2.1 (by decide), lw_set⟩, by omega, by omega⟩
  · refine hoareG_exL fun P3 => ?_
    refine hoareG_pre (P := fun t => (B + 12 ≤ P3 ∧ P3 ≤ B + S + 288) ∧
      IPre (RI (aOf s Γ p h0) Fl2)
        (fun m => LK logs CG B m ∧ LW m startN (B + 1) ∧ LW m Aw.pN P3) t) ?_
      (by rintro t ht ⟨hI, hL, hp⟩; exact ⟨hp, hI, hL⟩)
    exact hoareG_prop fun hP3 => rcpt_end hC hA hK hBp (by omega) P3 hP3.1 hP3.2

end InitECandidate.Solver.MemSafe.Rcpt
