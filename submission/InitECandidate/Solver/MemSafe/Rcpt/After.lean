import InitECandidate.Solver.MemSafe.Rcpt.Topics

set_option autoImplicit false

/-!
# `encode_logs`: the rest of an iteration (`afterTopics`) and the declarations of `topicsPart`
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

/-- The state after the iteration: `i + 1` and some `q`. -/
def JNext (D Lg : BitVec 64) (M : Mem) (i : Nat) (m : Locals) : Prop :=
  ∃ Q', JO D Lg M (i + 1) Q' m

/-- After the topics list is finished: `r` holds `R`. -/
def PA (D Lg : BitVec 64) (M : Mem) (i Q R : Nat) (m : Locals) : Prop :=
  JO D Lg M i Q m ∧ LB m logN (lgRec M Lg i) ∧ i < lgN M Lg ∧ LW m rN R ∧ Q + 30 ≤ R ∧
    R ≤ Q + 39 + 33 * lgNt M Lg i

/-- After the data: `r` holds `R`. -/
def PA' (D Lg : BitVec 64) (M : Mem) (i Q R : Nat) (m : Locals) : Prop :=
  JO D Lg M i Q m ∧ LB m logN (lgRec M Lg i) ∧ i < lgN M Lg ∧ LW m rN R ∧ Q + 30 ≤ R ∧
    R ≤ Q + 48 + 33 * lgNt M Lg i + lgDn M Lg i

def JQ (D Lg : BitVec 64) (M : Mem) (i Q' : Nat) (m : Locals) : Prop :=
  LB m dN D ∧ LB m logsN Lg ∧ LW m nN (lgN M Lg) ∧ LB m Aw.pN (lgP M Lg) ∧ LW m qN Q' ∧ LW m iN i ∧
    i < lgN M Lg ∧ D.toNat + 9 ≤ Q' ∧ Q' ≤ D.toNat + 9 + Sk M Lg (i + 1)

theorem rec_dn (M : Mem) (Lg : BitVec 64) (i : Nat) :
    rd M (lgRec M Lg i + BitVec.ofNat 64 32) = BitVec.ofNat 64 (lgDn M Lg i) := by
  unfold lgDn
  rw [ofNat_toNat_self]
  rfl

theorem rec_nt (M : Mem) (Lg : BitVec 64) (i : Nat) :
    rd M (lgRec M Lg i + BitVec.ofNat 64 16) = BitVec.ofNat 64 (lgNt M Lg i) := by
  unfold lgNt
  rw [ofNat_toNat_self]
  rfl

theorem ev_dn {M : Mem} {D Lg : BitVec 64} (hEnv : Env M D Lg) {σ : Type} {s : State σ} {i : Nat}
    (hmo : ModifiesOnly (Overlap D.toNat (9 + Sk M Lg (lgN M Lg))) M s.memory)
    (hlog : LB s.locals logN (lgRec M Lg i)) (hi : i < lgN M Lg) {v : ValueHOL 64}
    (hv : ev s (ldk logN 32) = some v) : v = .val (.word (BitVec.ofNat 64 (lgDn M Lg i))) := by
  rw [ev_ldk hmo hlog (env_rec hEnv hi (Or.inr (Or.inr (Or.inr (Or.inr rfl))))) hv, rec_dn]

theorem after_topics (hC : X.code.lookup = guestCode) (hA : AlignedDom X) {M : Mem}
    {D Lg : BitVec 64} (hEnv : Env M D Lg) {s0 : State σ} (hM : s0.memory = M) (i Q : Nat)
    {Ret : ValueHOL 64 → Prop} :
    HoareG σ X (LPre (Overlap D.toNat (9 + Sk M Lg (lgN M Lg))) s0
      (JI D Lg M i Q (lgNt M Lg i))) afterTopics
      (LZ (Overlap D.toNat (9 + Sk M Lg (lgN M Lg))) s0 (JNext D Lg M i) Ret) := by
  have hE := hEnv.hE
  have hhe : heapEnd + 1000 < scratchEnd := heapEnd_lt
  have hhe2 : heapEnd < 2 ^ 40 := by decide
  unfold afterTopics
  -- finish the topics list
  refine hoareG_seqZ (L2 := fun m => JI D Lg M i Q (lgNt M Lg i) m ∧
      LW m wN (hdrLen (33 * lgNt M Lg i) + 33 * lgNt M Lg i)) ?_ ?_
  · refine hoareG_finStep hC hA (x := tsN) (y := tN) ?_ ?_ ?_
    · intro m hm
      exact ⟨_, _, hm.2.1, hm.2.2.1⟩
    · intro s X' Y' hpre hX' hY'
      obtain ⟨⟨⟨_, _, _, _, _, _, hiN, hD, hQ⟩, hlog, hr, hi⟩, hts, ht, hnt, hj, hjle⟩ := hpre.1
      have e1 := lb_eq hX' hts
      have e2 := lb_eq hY' ht
      subst e1
      subst e2
      have hb := iter_bound hi hQ
      have hnd := nd_le hEnv hi
      rw [toNat_ofNat_lt (by omega), toNat_ofNat_lt (by omega)]
      have hh := hdrLen_le (n := 33 * lgNt M Lg i) (by omega)
      rw [show Q + 39 + 33 * lgNt M Lg i - (Q + 30 + 9) = 33 * lgNt M Lg i by omega]
      refine ⟨by omega, by omega, fun a ha => ovl_sub ha (by omega) (by omega)⟩
    · intro s X' Y' hpre hX' hY'
      obtain ⟨⟨⟨_, _, _, _, _, _, hiN, hD, hQ⟩, hlog, hr, hi⟩, hts, ht, hnt, hj, hjle⟩ := hpre.1
      have e1 := lb_eq hX' hts
      have e2 := lb_eq hY' ht
      subst e1
      subst e2
      have hb := iter_bound hi hQ
      have hnd := nd_le hEnv hi
      rw [toNat_ofNat_lt (by omega), toNat_ofNat_lt (by omega)]
      rw [show Q + 39 + 33 * lgNt M Lg i - (Q + 30 + 9) = 33 * lgNt M Lg i by omega]
      have hJ := hpre.1
      refine ⟨?_, lw_set⟩
      simp (disch := decide) only [JI, J3, JO, LB, LW, lookup_update_ne] at hJ ⊢
      exact hJ
  -- r = ts + w
  refine hoareG_seqZ (L2 := fun m => PA D Lg M i Q (Q + 30 + (hdrLen (33 * lgNt M Lg i) + 33 * lgNt M Lg i)) m) ?_ ?_
  · refine hoareG_assignZ fun s hs hL v hv => ?_
    obtain ⟨⟨⟨hJO, hlog, hr, hi⟩, hts, ht, hnt, hj, hjle⟩, hw⟩ := hL
    rw [ev_add2 (ev_lwn hts) (ev_lwn hw)] at hv
    cases hv
    have hnd := nd_le hEnv hi
    have hh := hdrLen_le (n := 33 * lgNt M Lg i) (by omega)
    refine ⟨?_, ?_, hi, ?_, by omega, by omega⟩
    · simp (disch := decide) only [JO, LB, LW, lookup_update_ne] at hJO ⊢
      exact hJO
    · exact lb_keep hlog (by decide)
    · unfold LW
      rw [lookup_update_self, ofNat_add_ofNat']
  -- the data
  refine hoareG_seqZ (L2 := fun m => PA D Lg M i Q (Q + 30 + (hdrLen (33 * lgNt M Lg i) + 33 * lgNt M Lg i)) m ∧
      ∃ k, LW m wN k ∧ 1 ≤ k ∧ k ≤ hdrLen (lgDn M Lg i) + lgDn M Lg i) ?_ ?_
  · refine hoareG_bytesStep hC hA (x := rN) ?_ ?_ ?_ ?_
    · intro m hm
      exact ⟨_, hm.2.2.2.1⟩
    · intro s hs hpre v hv
      have hmo : ModifiesOnly (Overlap D.toNat (9 + Sk M Lg (lgN M Lg))) M s.memory := hM ▸ hpre.2.2
      have := ev_dn hEnv hmo hpre.1.2.1 hpre.1.2.2.1 hv
      exact ⟨_, this⟩
    · intro s hs hpre X' N' hX' hN'
      have hmo : ModifiesOnly (Overlap D.toNat (9 + Sk M Lg (lgN M Lg))) M s.memory := hM ▸ hpre.2.2
      have hv := ev_dn hEnv hmo hpre.1.2.1 hpre.1.2.2.1 hN'
      simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hv
      subst hv
      obtain ⟨⟨_, _, _, _, _, _, hiN, hD, hQ⟩, hlog, hi, hr, hR1, hR2⟩ := hpre.1
      have e1 := lb_eq hX' hr
      subst e1
      have hb := iter_bound hi hQ
      have hnd := nd_le hEnv hi
      have hh := hdrLen_le (n := lgDn M Lg i) (by omega)
      have hh2 := hdrLen_le (n := 33 * lgNt M Lg i) (by omega)
      rw [toNat_ofNat_lt (by omega), toNat_ofNat_lt (by omega)]
      exact ⟨by omega, fun a ha => ovl_sub ha (by omega) (by omega)⟩
    · intro s X' N' k hpre hX' hN' k1 k2 k3
      have hmo : ModifiesOnly (Overlap D.toNat (9 + Sk M Lg (lgN M Lg))) M s.memory := hM ▸ hpre.2.2
      have hv := ev_dn hEnv hmo hpre.1.2.1 hpre.1.2.2.1 hN'
      simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hv
      subst hv
      have hi := hpre.1.2.2.1
      have hnd := nd_le hEnv hi
      rw [toNat_ofNat_lt (by omega)] at k2
      have hJ := hpre.1
      refine ⟨?_, k, lw_set, k1, k2⟩
      simp (disch := decide) only [PA, JO, LB, LW, lookup_update_ne] at hJ ⊢
      exact hJ
  -- r = r + w
  refine hoareG_seqZ (L2 := fun m => ∃ R, PA' D Lg M i Q R m) ?_ ?_
  · refine hoareG_assignZ fun s hs hL v hv => ?_
    obtain ⟨hJ, k, hw, k1, k2⟩ := hL
    obtain ⟨hJO, hlog, hi, hr, hR1, hR2⟩ := hJ
    rw [ev_add2 (ev_lwn hr) (ev_lwn hw)] at hv
    cases hv
    have hnd := nd_le hEnv hi
    have hh := hdrLen_le (n := lgDn M Lg i) (by omega)
    have hh2 := hdrLen_le (n := 33 * lgNt M Lg i) (by omega)
    refine ⟨Q + 30 + (hdrLen (33 * lgNt M Lg i) + 33 * lgNt M Lg i) + k, ?_, ?_, hi, ?_, by omega, by omega⟩
    · simp (disch := decide) only [JO, LB, LW, lookup_update_ne] at hJO ⊢
      exact hJO
    · exact lb_keep hlog (by decide)
    · unfold LW
      rw [lookup_update_self, ofNat_add_ofNat']
  -- the record
  refine hoareG_seqZ (L2 := fun m => ∃ R, PA' D Lg M i Q R m ∧
      LW m wN (hdrLen (R - (Q + 9)) + (R - (Q + 9)))) ?_ ?_
  · refine hoareG_finStep hC hA (x := qN) (y := rN) ?_ ?_ ?_
    · rintro m ⟨R, hm⟩
      exact ⟨_, _, hm.1.2.2.2.2.1, hm.2.2.2.1⟩
    · rintro s X' Y' ⟨⟨R, hP⟩, hb0⟩ hX' hY'
      obtain ⟨⟨_, _, _, _, hq, _, hiN, hD, hQ⟩, hlog, hi, hr, hR1, hR2⟩ := hP
      have e1 := lb_eq hX' hq
      have e2 := lb_eq hY' hr
      subst e1
      subst e2
      have hb := iter_bound hi hQ
      have hnd := nd_le hEnv hi
      rw [toNat_ofNat_lt (by omega), toNat_ofNat_lt (by omega)]
      have hh := hdrLen_le (n := R - (Q + 9)) (by omega)
      refine ⟨by omega, by omega, fun a ha => ovl_sub ha (by omega) (by omega)⟩
    · rintro s X' Y' ⟨⟨R, hP⟩, hb0⟩ hX' hY'
      have hJ := hP
      obtain ⟨⟨_, _, _, _, hq, _, hiN, hD, hQ⟩, hlog, hi, hr, hR1, hR2⟩ := hP
      have e1 := lb_eq hX' hq
      have e2 := lb_eq hY' hr
      subst e1
      subst e2
      have hnd := nd_le hEnv hi
      have hb := iter_bound hi hQ
      rw [toNat_ofNat_lt (by omega), toNat_ofNat_lt (by omega)]
      refine ⟨R, ?_, lw_set⟩
      simp (disch := decide) only [PA', JO, LB, LW, lookup_update_ne] at hJ ⊢
      exact hJ
  -- q = q + w
  refine hoareG_seqZ (L2 := fun m => ∃ Q', JQ D Lg M i Q' m) ?_ ?_
  · refine hoareG_assignZ fun s hs hL v hv => ?_
    obtain ⟨R, hP, hw⟩ := hL
    obtain ⟨⟨hd, hlogs, hn, hp, hq, hiL, hiN, hD, hQ⟩, hlog, hi, hr, hR1, hR2⟩ := hP
    rw [ev_add2 (ev_lwn hq) (ev_lwn hw)] at hv
    cases hv
    have hnd := nd_le hEnv hi
    have hb := iter_bound hi hQ
    have hsk := sk_succ M Lg i
    have hh := hdrLen_le (n := R - (Q + 9)) (by omega)
    refine ⟨Q + (hdrLen (R - (Q + 9)) + (R - (Q + 9))), lb_keep hd (by decide),
      lb_keep hlogs (by decide), lw_keep hn (by decide), lb_keep hp (by decide), ?_,
      lw_keep hiL (by decide), hi, by omega, by omega⟩
    unfold LW
    rw [lookup_update_self, ofNat_add_ofNat']
  -- i = i + 1
  refine hoareG_assignZ fun s hs hL v hv => ?_
  obtain ⟨Q', hd, hlogs, hn, hp, hq, hiL, hi, hD, hQ⟩ := hL
  rw [ev_add2 (ev_lwn hiL) (ev_cw _ 1)] at hv
  cases hv
  refine ⟨Q', lb_keep hd (by decide), lb_keep hlogs (by decide), lw_keep hn (by decide),
    lb_keep hp (by decide), lw_keep hq (by decide), ?_, by omega, hD, hQ⟩
  unfold LW
  rw [lookup_update_self, ofNat_add_ofNat']

end InitECandidate.Solver.MemSafe.Rcpt
