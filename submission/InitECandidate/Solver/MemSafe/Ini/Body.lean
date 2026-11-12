import InitECandidate.Solver.MemSafe.Ini.Step

/-!
# `nodedb_build`: the loop

`loop_ndb`: from `JL I` (any counter `I ≤ n`), the insertion loop ends in `JL n` (or abortively).
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Ini
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.HtabEntries
open InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.Spec.Mpt.Leaves (DomTop)

variable {σ : Type} {X : Ctx 64}

section body
variable {s0 : State σ} {Γ0 : Gam} {p0 : Ptrs} {A N C T ks kp W : BitVec 64}

theorem lvi_succ {s : State σ} {I : BitVec 64} (h : LVi (kvL A N C T I) s.locals) :
    LVi (kvL A N C T (I + BitVec.ofNat 64 1))
      (setVarHOLFinite (nm "i") (.val (.word (I + BitVec.ofNat 64 1))) s).locals := by
  intro q hq
  simp only [kvL, List.mem_cons, List.not_mem_nil, or_false] at hq
  rcases hq with rfl | rfl | rfl | rfl | rfl
  · exact lk_set_self _ _ _
  · rw [lk_set_ne _ _ (by dsimp only; decide)]; exact h _ (by simp [kvL])
  · rw [lk_set_ne _ _ (by dsimp only; decide)]; exact h _ (by simp [kvL])
  · rw [lk_set_ne _ _ (by dsimp only; decide)]; exact h _ (by simp [kvL])
  · rw [lk_set_ne _ _ (by dsimp only; decide)]; exact h _ (by simp [kvL])

theorem step_inc (I : BitVec 64) :
    HoareG σ X (JM s0 Γ0 p0 A N C T I) ndbIncr (NQ (JL s0 Γ0 p0 A N C T (I + BitVec.ofNat 64 1))
      (FinQ s0 Γ0 p0 A N)) := by
  refine nq_assign ?_
  intro s hs ⟨hLV, hlt, H, he, ht⟩ v hv
  rw [ev_add2 (lvi_ev hLV (x := nm "i") (v := .val (.word I)) (by simp [kvL])) (ev_cw s 1)] at hv
  cases hv
  have hI : (I + BitVec.ofNat 64 1).toNat = I.toNat + 1 := by
    rw [BitVec.toNat_add, BitVec.toNat_ofNat]
    have := N.isLt
    rw [Nat.mod_eq_of_lt (a := 1) (by omega), Nat.mod_eq_of_lt (by omega)]
  refine ⟨lvi_succ hLV, by rw [hI]; omega, H, eff_congr he rfl rfl rfl rfl, ?_⟩
  rw [hI]
  exact tbl_congr ht rfl rfl rfl

theorem body_at (sta : Sta s0 Γ0 p0 N ks kp W) (hX : X.code.lookup = guestCode)
    (hA : ∀ x, X.memaddrs x → x.toNat % 8 = 0) (hD : DomTop X) (I : BitVec 64) :
    HoareG σ X (JS s0 Γ0 p0 A N C T I) ndbLoopBody
      (NQ (JL s0 Γ0 p0 A N C T (I + BitVec.ofNat 64 1)) (FinQ s0 Γ0 p0 A N)) := by
  unfold ndbLoopBody
  exact nq_seq (step_kec sta hX hA hD I) (nq_seq (step_set sta hX I) (step_inc I))

theorem loop_ndb (sta : Sta s0 Γ0 p0 N ks kp W) (hX : X.code.lookup = guestCode)
    (hA : ∀ x, X.memaddrs x → x.toNat % 8 = 0) (hD : DomTop X) :
    HoareG σ X (fun t => ∃ I, JL s0 Γ0 p0 A N C T I t) ndbLoop
      (NQ (JL s0 Γ0 p0 A N C T N) (FinQ s0 Γ0 p0 A N)) := by
  unfold ndbLoop
  refine nq_while (c := ndbLoopCond) ?_ ?_ ?_
  · rintro s ⟨I, hLV, hIN, H, he, ht⟩
    exact ⟨I, hLV, hIN, H, eff_congr he rfl rfl rfl rfl, tbl_congr ht rfl rfl rfl⟩
  · intro s hs ⟨⟨I, hJ⟩, hc⟩ hg
    have hlt : I.toNat < N.toNat :=
      Struct.cmp_lower_true (Rec.cmp_true' (lvi_ev hJ.1 (x := nm "i") (v := .val (.word I))
        (by simp [kvL])) (lvi_ev hJ.1 (x := nm "n") (v := .val (.word N)) (by simp [kvL])) hc)
    have h := body_at (A := A) (C := C) (T := T) sta hX hA hD I s hs ⟨hJ, hlt⟩ hg
    exact ⟨fun hr => ⟨_, h.1 hr⟩, h.2⟩
  · intro s hs ⟨I, hJ⟩ hc
    obtain ⟨x, y, hx, hy, hxy⟩ := cmp_false hc
    have hx' : x = I := by
      rw [lvi_ev hJ.1 (x := nm "i") (v := .val (.word I)) (by simp [kvL])] at hx
      exact (AllocImpl.word_inj hx).symm
    have hy' : y = N := by
      rw [lvi_ev hJ.1 (x := nm "n") (v := .val (.word N)) (by simp [kvL])] at hy
      exact (AllocImpl.word_inj hy).symm
    subst hx' hy'
    have hge := Struct.cmp_lower_false hxy
    have : x = y := BitVec.eq_of_toNat_eq (by have := hJ.2.1; omega)
    subst this
    exact hJ

end body

end InitECandidate.Solver.MemSafe.Ini

#print axioms InitECandidate.Solver.MemSafe.Ini.body_at
#print axioms InitECandidate.Solver.MemSafe.Ini.loop_ndb
