import InitECandidate.Solver.MemSafe.Trie.FillInv

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# The pop arm of `_node_rlp_fill`, exception-inclusive

`pop_stepG`: `_node_rlp_finish(top, nd); top = ld top;` from the arm facts: a normal end keeps the extended
invariant `FInvX` with a smaller measure and a step footprint; an abnormal end has a step footprint.
-/

namespace InitECandidate.Solver.MemSafe.Trie
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers
open InitECandidate.Solver.Spec.Mpt InitECandidate.Solver.Spec.Mpt.Leaves

variable {σ : Type} {X : Ctx 64}

/-- The arm facts with the extensions. -/
def ArmPreX (Nd : BitVec 64 → Prop) (HP0 S0 d : Nat) (p : Ptrs) (T N : BitVec 64) (t : State σ) : Prop :=
  ArmPre Nd HP0 S0 d p T N t ∧ LenStat Nd t ∧ ChainB t.memory (d + 1) T

/-- The relation `finishG` proves. -/
def FinRel (vs : List (ValueHOL 64)) (s : State σ) (r : PanSemResultExact 64) (t : State σ) : Prop :=
  Good (some r) →
      ∀ (fr nd : BitVec 64) (p : Ptrs), vs = [.val (.word fr), .val (.word nd)] →
        ptrsOf s = some p → p.Ordered →
        (∃ Nd, TrieOK s Nd p.hp ∧ Nd nd ∧ RecKind (rd s.memory nd)) → RC s fr nd →
        (rd s.memory nd ≠ 3 → heapBase ≤ (panByteAlignHOL (rd s.memory (fr + 24))).toNat ∧
          (panByteAlignHOL (rd s.memory (fr + 24))).toNat < p.hp) →
        (pl1 s nd (rd s.memory (fr + 40))).toNat < 2 ^ 62 →
        (rd s.memory nd = 1 → (pl1 s nd (rd s.memory (fr + 40))).toNat =
          encLenN (ld8W s (rd s.memory (fr + 24))) (rd s.memory (fr + 32)) +
          encLenN (ld8W s (rd s.memory (nd + 48))) (rd s.memory (nd + 56))) →
        (rd s.memory nd = 2 → (pl1 s nd (rd s.memory (fr + 40))).toNat =
          encLenN (ld8W s (rd s.memory (fr + 24))) (rd s.memory (fr + 32)) +
          (RL s.memory (rd s.memory (nd + 48))).toNat) →
        (rd s.memory nd = 3 → (pl1 s nd (rd s.memory (fr + 40))).toNat = brSumN s.memory nd 16 +
          encLenN (ld8W s (rd s.memory (nd + 160))) (rd s.memory (nd + 168))) →
        FEx s p nd t

theorem finishG' (hC : X.code.lookup = guestCode) (hA : AlignedDom X) (hT : DomTop X)
    (hNS : MemSafe.NullSafe X) (hX0 : DomBounded X) :
    FunSpec σ X (nm "_node_rlp_finish") (FinRel (σ := σ)) := finishG hC hA hT hNS hX0

/-- **The pop arm.** -/
theorem pop_stepG (hC : X.code.lookup = guestCode) (hA : AlignedDom X) (hT : DomTop X)
    (hNS : MemSafe.NullSafe X) (hX0 : DomBounded X) {Nd : BitVec 64 → Prop} {HP0 S0 d : Nat}
    {p : Ptrs} {T N : BitVec 64} {s0 : State σ} (hpre : ArmPreX Nd HP0 S0 d p T N s0) :
    HoareG σ X (fun t => t = s0) popArm
      (PG (fun t => FInvX Nd HP0 S0 t ∧ fMu t < (p.sp - heapEnd) / 24 + (d + 1) ∧ StepW S0 Nd s0 t)
        (StepW S0 Nd s0)) := by
  unfold popArm
  obtain ⟨⟨hp, hord, h0, hb0, hsp, hS0, htr, hT', hN', hT8, hch⟩, hL, hB⟩ := hpre
  have hch0 := hch
  obtain ⟨h0', h1, h2, ⟨r1, r2, -, -, r5, r6⟩, h4⟩ := hch
  rw [hT8] at r1 r2 r5 r6
  have hhp := hord.2.1
  have hspE := heapEnd_le_sp hord
  have hcl : (rd s0.memory (T + 32)).toNat < 2 ^ 33 := hB.1
  obtain ⟨hn1, hn2, hn3, hn4⟩ := finish_numeric hL r1 r2 r5 hcl
  -- the finish call
  have key : ∀ (vs : List (ValueHOL 64)) (st : State σ) (r : PanSemResultExact 64),
      vs = [.val (.word T), .val (.word N)] → FinRel vs s0 r st → Good (some r) → FEx s0 p N st :=
    fun vs st r hvs hR hg => hR hg T N p hvs hp hord ⟨Nd, trieOK_mono h0 htr, r1, r2⟩ r5
      (fun hk3 => by obtain ⟨c1, c2⟩ := r6 hk3; exact ⟨le_trans hb0 c1, c2⟩) hn1 hn2 hn3 hn4
  refine hoareG_seqP (S1 := fun u => ∃ p' : Ptrs, ptrsOf u = some p' ∧ p'.Ordered ∧ p.hp ≤ p'.hp ∧
      p'.sp = p.sp ∧ TrieOK u Nd HP0 ∧ LenStat Nd u ∧
      u.locals.lookup (nm "top") = some (.val (.word T)) ∧
      ChainF u Nd HP0 p'.hp S0 d (T.toNat + 48) true (rd u.memory T) ∧
      ChainB u.memory d (rd u.memory T) ∧ StepW S0 Nd s0 u) ?_ ?_
  · refine hoareG_callDP ((finishG' hC hA hT hNS hX0).and (funSpec_be _)) ?_ ?_
    · intro s hs hP vs hvs callee v st ⟨hR, hbe⟩ hst
      subst hP
      rw [evs_cons (ev_lw hT') (evs_cons (ev_lw hN') evs_nil)] at hvs
      simp only [Option.some.injEq] at hvs
      subst hvs
      have hFE := key _ st _ rfl hR (by simp [Good])
      have hSW := stepW_of_fEx (S0 := S0) htr.1 r1 hp hFE
      obtain ⟨hg, p', hp', hord', hhp', hw⟩ := hFE
      have hbe' : st.be = s.be := hbe
      have hw' : ∀ x, st.memory x ≠ s.memory x → SafeW s Nd p.hp p.sp S0 x := by
        intro x hx
        rcases hw x hx with ⟨c1, c2⟩ | h | h
        · exact Or.inr (Or.inr (Or.inr (Or.inl ⟨c1, by have := hord'.2.1; omega⟩)))
        · exact Or.inl (cacheW_safe htr.1 r1 h)
        · exact Or.inr (Or.inl h)
      obtain ⟨hSS, hrec, hheap⟩ := safe_keeps htr h0 hhp hspE (by omega) hw'
      have hk1 : gword st gKst = gword s gKst := gword_glob (hg _ (by decide))
      have hk2 : gword st gKpad = gword s gKpad := gword_glob (hg _ (by decide))
      have hsp' : p'.sp = p.sp := sp_eq_of_glob hp hp' (hg gScratch (by decide))
      refine ⟨p', hp', hord', hhp', hsp', trieOK_frame (by omega) htr hSS hk1 hk2,
        lenStat_of_struct htr.1 (by omega) hSS hL, hT', ?_, ?_, hSW⟩
      · show ChainF { st with locals := s.locals } Nd HP0 p'.hp S0 d (T.toNat + 48) true
          (rd st.memory T)
        rw [rd_eq (hrec T h1 (by omega))]
        exact chainF_of_eq (s := st) (t := { st with locals := s.locals }) rfl rfl (chainF_frame hS0 hbe' hhp' hSS hheap htr.1 (by omega) d _ _
          (fun x hx1 hx2 => hrec x (by omega) hx2) h4)
      · show ChainB st.memory d (rd st.memory T)
        rw [rd_eq (hrec T h1 (by omega))]
        exact chainB_frame hS0 d (T.toNat + 48) true _ h4
          (fun x hx1 hx2 => hrec x (by omega) hx2) hB.2
    · intro s hs hP vs hvs callee r st ⟨hR, hbe⟩ hst habn
      subst hP
      rw [evs_cons (ev_lw hT') (evs_cons (ev_lw hN') evs_nil)] at hvs
      simp only [Option.some.injEq] at hvs
      subst hvs
      exact stepW_of_fEx htr.1 r1 hp (key _ st r rfl hR (abn_good habn))
  · refine hoareG_assign fun u _ ⟨p', hp', hord', hhp', hsp', htr', hL', hTu, hch', hB', hSW⟩ v hv _ => ?_
    obtain ⟨w, hw, -, rfl⟩ := ev_load1_inv' hv
    rw [ev_add_cw hTu 0] at hw
    cases hw
    have hT0 : T + BitVec.ofNat 64 0 = T := by simp
    rw [hT0]
    set u2 := setVarHOLFinite (nm "top") (.val (.word (rd u.memory T))) u
    have hp2 : ptrsOf u2 = some p' := hp'
    have hch2 : ChainF u2 Nd HP0 p'.hp S0 d p'.sp false (rd u.memory T) :=
      chainF_false_of (chainF_mono_lo (by omega) (chainF_of_eq (s := u) (t := u2) rfl rfl hch'))
    refine pg_none ⟨⟨p', hp2, hord', by omega, hb0, by omega, hS0, htr', hL', _, d,
      lk_set_self _ _ _, hch2, hB'⟩, ?_, hSW⟩
    rw [fMu_of hp2 (lk_set_self _ _ _) hS0 hch2, hsp']
    omega

end InitECandidate.Solver.MemSafe.Trie
