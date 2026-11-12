import InitECandidate.Solver.MemSafe.Rcpt.Env

set_option autoImplicit false

/-!
# `encode_logs`: the topics loop of one record, with exact footprints

From `J3` (`r = q + 30`): `ts = r`, `t = r + 9`, `nt` from the record, the loop writes one topic
(33 bytes) per iteration; `afterTopics` finishes the topics list, writes the data and finishes the
record.
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
open InitECandidate.Solver.MemSafe.Aw

variable {σ : Type} {X : Ctx 64}

theorem ovl_sub {b n b' n' : Nat} {a : BitVec 64} (h : Overlap b' n' a) (h1 : b ≤ b')
    (h2 : b' + n' ≤ b + n) : Overlap b n a := by
  unfold Overlap at *
  omega

theorem hdr32 : hdrLen 32 = 1 := by decide
theorem hdr20 : hdrLen 20 = 1 := by decide

theorem heapEnd_lt : heapEnd + 1000 < scratchEnd := by decide

/-- Arithmetic of iteration `i`: all pointers of the iteration stay below the end of the output. -/
theorem iter_bound {M : Mem} {Lg : BitVec 64} {D : BitVec 64} {i Q : Nat} (hi : i < lgN M Lg)
    (hQ : Q ≤ D.toNat + 9 + Sk M Lg i) :
    Q + 64 + 33 * lgNt M Lg i + lgDn M Lg i ≤ D.toNat + 9 + Sk M Lg (lgN M Lg) := by
  have h1 := sk_succ M Lg i
  have h2 := sk_mono M Lg (show i + 1 ≤ lgN M Lg from hi)
  omega

theorem nd_le {M : Mem} {D Lg : BitVec 64} (hEnv : Env M D Lg) {i : Nat} (hi : i < lgN M Lg) :
    33 * lgNt M Lg i + lgDn M Lg i + 64 ≤ heapEnd := by
  have h1 := sk_succ M Lg i
  have h2 := sk_mono M Lg (show i + 1 ≤ lgN M Lg from hi)
  have h3 := hEnv.hE
  omega

/-- After the call: `t` advanced, `j` not yet. -/
def Kt (D Lg : BitVec 64) (M : Mem) (i Q j : Nat) (m : Locals) : Prop :=
  J3 D Lg M i Q m ∧ LW m tsN (Q + 30) ∧ LW m tN (Q + 39 + 33 * (j + 1)) ∧ LW m ntN (lgNt M Lg i) ∧
    LW m jN j ∧ j < lgNt M Lg i

theorem topic_body (hC : X.code.lookup = guestCode) (hA : AlignedDom X) {M : Mem}
    {D Lg : BitVec 64} (hEnv : Env M D Lg) {s0 : State σ} (i Q j : Nat) {Ret : ValueHOL 64 → Prop} :
    HoareG σ X (LPre (Overlap D.toNat (9 + Sk M Lg (lgN M Lg))) s0
      (fun m => JI D Lg M i Q j m ∧ j < lgNt M Lg i)) innerBody
      (LZ (Overlap D.toNat (9 + Sk M Lg (lgN M Lg))) s0 (fun m => ∃ j, JI D Lg M i Q j m) Ret) := by
  have hE := hEnv.hE
  have hhe : heapEnd + 1000 < scratchEnd := heapEnd_lt
  have hhe2 : heapEnd < 2 ^ 40 := by decide
  unfold innerBody
  refine hoareG_seqZ (L2 := fun m => (JI D Lg M i Q j m ∧ j < lgNt M Lg i) ∧ LW m wN 33) ?_ ?_
  · refine hoareG_bytesStep hC hA (x := tN) (e2 := cw 32) ?_ ?_ ?_ ?_
    · intro m hm
      exact ⟨_, hm.1.2.2.1⟩
    · intro s hs hpre v hv
      rw [ev_cw] at hv
      exact ⟨_, (Option.some.inj hv).symm⟩
    · intro s hs hpre X' N' hX' hN'
      rw [ev_cw] at hN'
      cases hN'
      obtain ⟨⟨⟨⟨⟨_, _, _, _, _, _, hiN, hD, hQ⟩, hlog, hr, hi⟩, hts, ht, hnt, hj, hjle⟩, hjlt⟩, -⟩ := hpre
      have hXe := lb_eq hX' ht
      subst hXe
      have hb := iter_bound hi hQ
      have hnd := nd_le hEnv hi
      have hT : (BitVec.ofNat 64 (Q + 39 + 33 * j)).toNat = Q + 39 + 33 * j :=
        toNat_ofNat_lt (by omega)
      have h32 : (BitVec.ofNat 64 32).toNat = 32 := toNat_ofNat_lt (by omega)
      rw [hT, h32, hdr32]
      exact ⟨by omega, fun a ha => ovl_sub ha (by omega) (by omega)⟩
    · intro s X' N' k hpre hX' hN' k1 k2 k3
      rw [ev_cw] at hN'
      cases hN'
      have h32 : (BitVec.ofNat 64 32).toNat = 32 := toNat_ofNat_lt (by omega)
      rw [h32, hdr32] at k2 k3
      have hk : k = 33 := k3 (by omega)
      subst hk
      obtain ⟨hJ, hlt⟩ := hpre.1
      refine ⟨⟨?_, hlt⟩, lw_set⟩
      simp (disch := decide) only [JI, J3, JO, LB, LW, lookup_update_ne] at hJ ⊢
      exact hJ
  refine hoareG_seqZ (L2 := fun m => Kt D Lg M i Q j m) ?_ ?_
  · refine hoareG_assignZ fun s hs hL v hv => ?_
    obtain ⟨⟨hJ, hlt⟩, hw⟩ := hL
    have ht := hJ.2.2.1
    rw [ev_add2 (ev_lwn ht) (ev_lwn hw)] at hv
    cases hv
    refine ⟨?_, lw_keep hJ.2.1 (by decide), ?_, lw_keep hJ.2.2.2.1 (by decide),
      lw_keep hJ.2.2.2.2.1 (by decide), hlt⟩
    · simp (disch := decide) only [J3, JO, LB, LW, lookup_update_ne] at hJ ⊢
      exact hJ.1
    · unfold LW
      rw [lookup_update_self, ofNat_add_ofNat', show Q + 39 + 33 * j + 33 = Q + 39 + 33 * (j + 1) by omega]
  · refine hoareG_assignZ fun s hs hK v hv => ?_
    have hj := hK.2.2.2.2.1
    rw [ev_add2 (ev_lwn hj) (ev_cw _ 1)] at hv
    cases hv
    refine ⟨j + 1, ?_, lw_keep hK.2.1 (by decide), lw_keep hK.2.2.1 (by decide),
      lw_keep hK.2.2.2.1 (by decide), ?_, by have := hK.2.2.2.2.2; omega⟩
    · simp (disch := decide) only [J3, JO, LB, LW, lookup_update_ne] at hK ⊢
      exact hK.1
    · unfold LW
      rw [lookup_update_self, ofNat_add_ofNat']

theorem topic_loop (hC : X.code.lookup = guestCode) (hA : AlignedDom X) {M : Mem}
    {D Lg : BitVec 64} (hEnv : Env M D Lg) {s0 : State σ} (i Q : Nat)
    {Ret : ValueHOL 64 → Prop} :
    HoareG σ X (LPre (Overlap D.toNat (9 + Sk M Lg (lgN M Lg))) s0
      (fun m => ∃ j, JI D Lg M i Q j m))
      (.while (.cmp .less (lv jN) (lv ntN)) innerBody)
      (LZ (Overlap D.toNat (9 + Sk M Lg (lgN M Lg))) s0 (JI D Lg M i Q (lgNt M Lg i)) Ret) := by
  have hE := hEnv.hE
  have hhe2 : heapEnd < 2 ^ 40 := by decide
  have hnd := fun (hi : i < lgN M Lg) => nd_le hEnv hi
  refine hoareG_whileZ (J := fun m => ∃ j, JI D Lg M i Q j m) ?_ ?_
  ·
    refine hoareG_pre (P := fun s => ∃ j, LPre (Overlap D.toNat (9 + Sk M Lg (lgN M Lg))) s0
        (fun m => JI D Lg M i Q j m ∧ j < lgNt M Lg i) s) ?_ ?_
    · exact hoareG_ex fun j => topic_body hC hA hEnv i Q j
    · rintro s hs ⟨⟨⟨j, hj⟩, hb⟩, hc⟩
      have hi := hj.1.2.2.2
      have hn := hnd hi
      have hjle := hj.2.2.2.2.2
      refine ⟨j, ⟨hj, ?_⟩, hb⟩
      exact lt_of_cond hj.2.2.2.2.1 hj.2.2.2.1 (by omega) (by omega) hc
  · intro s hs ⟨j, hj⟩ hz
    have hi := hj.1.2.2.2
    have hn := hnd hi
    have hjle := hj.2.2.2.2.2
    have hnlt := nlt_of_exit hj.2.2.2.2.1 hj.2.2.2.1 (by omega) (by omega) hz
    have : j = lgNt M Lg i := by have := hj.2.2.2.2.2; omega
    subst this
    exact hj

end InitECandidate.Solver.MemSafe.Rcpt
