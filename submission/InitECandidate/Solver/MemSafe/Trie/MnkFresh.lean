import InitECandidate.Solver.MemSafe.Trie.NodeHashG
import InitECandidate.Solver.Band4.Mnk

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# `mpt_nibble_key`: the returned block is fresh

`mnk_fresh`: a returning `mpt_nibble_key(M, K, KL)` returns `<nb, L>` with `nb` an 8-aligned block of `L`
bytes (`L = 64` or `2 KL`) inside the live heap of the exit allocator `p'` and unallocated at the entry `p`.
(`Band4.ret_mpt_nibble_key` has the byte facts but not the allocator facts.)
-/

namespace InitECandidate.Solver.MemSafe.Trie
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers
open InitECandidate.Solver.Spec.Mpt InitECandidate.Solver.Spec.Mpt.Leaves

variable {σ : Type} {X : Ctx 64}

/-- The block facts of a returned `<nb, L>`. -/
def MnkBlk (p p' : Ptrs) (KL nb L : BitVec 64) : Prop :=
  p'.Ordered ∧ p.Mono p' ∧ nb.toNat % 8 = 0 ∧ heapBase ≤ nb.toNat ∧ nb.toNat + L.toNat ≤ p'.hp ∧
    (∀ x : Nat, nb.toNat ≤ x → x < nb.toNat + L.toNat → ¬ p.Allocated x) ∧
    (L.toNat = 64 ∨ L.toNat = 2 * KL.toNat)

/-- The result post (returns only; never `none`). -/
def MnkQ0 (p : Ptrs) (KL : BitVec 64) : Option (PanSemResultExact 64) → State σ → Prop :=
  fun r t => r ≠ none ∧ ∀ v, r = some (.returned v) → ∃ nb L : BitVec 64, ∃ p' : Ptrs,
    v = .rStruct [.val (.word nb), .val (.word L)] ∧ ptrsOf t = some p' ∧ MnkBlk p p' KL nb L

theorem mnkq0_abn {p : Ptrs} {KL : BitVec 64} {r : PanSemResultExact 64} {t : State σ}
    (h : Abn r) : MnkQ0 p KL (some r) t :=
  ⟨by simp, fun v hv => by
    cases hv
    rcases h with ⟨e, v', h'⟩ | ⟨e, h'⟩ <;> cases h'⟩

theorem hoareG_decCallQ {rn : MlS} {sh : ShapeHOL} {f : MlS} {args : List (ExpHOL 64)} {k : ProgHOL 64}
    {R : List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop}
    (hf : FunSpec σ X f R) {P : State σ → Prop} {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (hQL : ∀ r (t : State σ) (L : Locals), Q r t → Q r { t with locals := L })
    (hk : ∀ s, InCtx s X → P s → ∀ vs, evs s args = some vs →
      ∀ callee v (st : State σ), R vs (callEntryStateHOLFinite s callee) (.returned v) st →
        InCtx st X → shapeEqHOL (shapeOfHOLExact v) sh = true →
        HoareG σ X (fun t => t = setVarHOLFinite rn v { st with locals := s.locals }) k Q)
    (habn : ∀ s, InCtx s X → P s → ∀ vs, evs s args = some vs →
      ∀ callee r (st : State σ), R vs (callEntryStateHOLFinite s callee) r st → InCtx st X →
        Abn r → Q (some r) (emptyLocalsHOLFinite st)) :
    HoareG σ X P (.decCall rn sh f args k) Q :=
  hoareG_decCall hf (fun s hs hp vs hvs callee v st hR hst hsh =>
    hoareG_conseq (hk s hs hp vs hvs callee v st hR hst hsh) (fun t _ ht => ht)
      fun r t _ _ hq => hQL _ _ _ hq) habn

/-- The tail `key_to_nibbles(src, n, nb); return <nb, len>` with the allocator facts kept. -/
theorem mnk_tail' (hC : X.code.lookup = guestCode) {nbN : MlS} {src nE lE : ExpHOL 64}
    {q S N L : BitVec 64} {p p' : Ptrs} {KL : BitVec 64} {P : State σ → Prop}
    (hP : ∀ t, P t → t.locals.lookup nbN = some (.val (.word q)) ∧ ptrsOf t = some p' ∧
      ev t src = some (.val (.word S)) ∧ ev t nE = some (.val (.word N)) ∧
      (∀ t' : State σ, t'.locals = t.locals → ev t' lE = some (.val (.word L))))
    (hbuf : N.toNat = 0 ∨ q.toNat + 2 * N.toNat ≤ scratchEnd)
    (hblk : MnkBlk p p' KL q L) :
    HoareG σ X P (.seq (callD (nm "key_to_nibbles") [src, nE, lv nbN])
      (.return (.rstruct [lv nbN, lE]))) (MnkQ0 p KL) := by
  refine hoareG_seqPQ' (S := fun t => t.locals.lookup nbN = some (.val (.word q)) ∧ ptrsOf t = some p' ∧
      (∀ t' : State σ, t'.locals = t.locals → ev t' lE = some (.val (.word L))))
    (E := fun _ => True) ?_ ?_ (fun r t hab _ => mnkq0_abn hab)
  · refine hoareG_callDP (foot_key_to_nibbles hC) ?_ ?_
    · intro s hs hPs vs hvs callee v st hR hst
      obtain ⟨hnb, hps, hsrc, hnE, hlE⟩ := hP s hPs
      rw [evs_cons hsrc (evs_cons hnE (evs_cons (ev_lw hnb) evs_nil))] at hvs
      simp only [Option.some.injEq] at hvs
      subst hvs
      obtain ⟨hg, -⟩ := hR (by simp [Good]) ⟨q, N, rfl, rfl, hbuf⟩
      exact ⟨hnb, by show ptrsOf st = _; rw [ptrsOf_frame hg]; exact hps, hlE⟩
    · intro s hs hPs vs hvs callee r st hR hst habn
      trivial
  · refine hoareG_return fun s _ hS v hv => ?_
    obtain ⟨hnb, hps, hlE⟩ := hS
    refine ⟨by simp, fun v' hv' => ?_⟩
    cases hv'
    obtain ⟨vs, rfl, hvs⟩ := ev_rstruct_inv hv
    rw [evs_cons (ev_lw hnb) (evs_cons (hlE s rfl) evs_nil)] at hvs
    simp only [Option.some.injEq] at hvs
    subst hvs
    exact ⟨q, L, p', rfl, hps, hblk⟩

theorem rq_of_q0 {S : State σ → Prop} {p : Ptrs} {KL : BitVec 64} {r : Option (PanSemResultExact 64)}
    {t : State σ} (h : MnkQ0 p KL r t) : RQ S (MnkQ0 p KL) r t := by
  obtain ⟨h1, h2⟩ := h
  cases r with
  | none => exact absurd rfl h1
  | some r' => exact rq_some ⟨h1, h2⟩

set_option maxHeartbeats 4000000 in
theorem mnk_main (hC : X.code.lookup = guestCode) (hA : AlignedDom X) (hT : DomTop X)
    (hX0 : DomBounded X) {s0 : State σ} {p : Ptrs} {M K KL ks kp hsc : BitVec 64}
    (hp : ptrsOf s0 = some p) (hord : p.Ordered) (hKL : 2 * KL.toNat < 2 ^ 64)
    (hK : KOK s0 ks kp) (hsw : gword s0 (nm "mpt_hash_scratch") = some hsc) (hs32 : hsc.toNat + 32 < 2 ^ 64)
    (hm : s0.locals.lookup (nm "m") = some (.val (.word M)))
    (hk : s0.locals.lookup (nm "key") = some (.val (.word K)))
    (hkl : s0.locals.lookup (nm "klen") = some (.val (.word KL))) :
    HoareG σ X (fun t => t = s0) MptH.mnkBody (MnkQ0 p KL) := by
  have hkec : FunSpec σ X (nm "keccak256") (fun _ _ r _ => ¬ Abn r) :=
    Rec.noAbn_of_ef (Rec.ef_of_table hC hX0 (by decide_cbv))
  have hE := heapEnd_lt'
  have hSE : heapEnd ≤ scratchEnd := by decide
  unfold MptH.mnkBody
  refine hoareG_seqRQ (S := fun t => t = s0 ∧ rd s0.memory (M + BitVec.ofNat 64 8) = 0) ?_ ?_
  · refine hoareG_ite ?_ ?_
    swap
    · refine hoareG_skip fun s _ ⟨hP, hc⟩ => rq_none ⟨hP, ?_⟩
      subst hP
      obtain ⟨x', y', hx', hy', hxy⟩ := cmp_false hc
      have hxv := Band4.mnk_ld_m8 hm hx'
      rw [ev_cw] at hy'
      cases hy'
      subst hxv
      simpa [Flapjack.Compiler.Encoders.Asm.wordCmpHOL] using hxy
    · refine hoareG_conseq (P := fun t => t = s0) (Q := MnkQ0 p KL) ?_ (fun t _ ht => ht.1)
        (fun r t _ _ hq => rq_of_q0 hq)
      refine hoareG_seqPQ' (S := fun t => t.globals = s0.globals ∧ t.locals = s0.locals)
        (E := fun _ => True) ?_ ?_ (fun r t hab _ => mnkq0_abn hab)
      · refine hoareG_callDP ((hkec).and (ret_keccak256 hC hA hT)) ?_ ?_
        · intro s hs hPs vs hvs callee v st ⟨hna, hRK⟩ hst
          subst hPs
          rw [evs_cons (ev_lw hk) (evs_cons (ev_lw hkl) (evs_cons (Band4.mnk_ev_glob hsw) evs_nil))] at hvs
          simp only [Option.some.injEq] at hvs
          subst hvs
          have hBW := hRK v rfl K KL hsc ks kp rfl hK hs32
          exact ⟨hBW.1, rfl⟩
        · intro s hs hPs vs hvs callee r st ⟨hna, hRK⟩ hst habn
          exact absurd habn hna
      · refine hoareG_decCallQ (allocSpec_alloc hC) (fun r t L h => ?_) ?_ (fun s hs hPs vs hvs callee r st hR hst habn => mnkq0_abn habn)
        · obtain ⟨h1, h2⟩ := h
          exact ⟨h1, fun v hv => by
            obtain ⟨nb, L', p', hv', hp', hb⟩ := h2 v hv
            exact ⟨nb, L', p', hv', hp', hb⟩⟩
        · intro s hs hPs vs hvs callee v st hR hst hsh
          obtain ⟨hgs, hls⟩ := hPs
          rw [evs_cons (ev_cw _ 64) evs_nil] at hvs
          simp only [Option.some.injEq] at hvs
          subst hvs
          have hpe : ptrsOf (callEntryStateHOLFinite s callee) = some p := by
            show ptrsOf s = some p
            rw [ptrsOf_frame hgs]; exact hp
          obtain ⟨hmem, hglob, p', hp', hord', hmono, hret⟩ := hR (by simp [Good]) _ p rfl hpe hord
          obtain ⟨q, rfl, hq8, hlive, hfree⟩ := hret _ rfl
          have h64 : (BitVec.ofNat 64 64).toNat = 64 := by decide
          rw [h64] at hlive hfree
          have hlive' : heapBase ≤ q.toNat ∧ q.toNat + 64 ≤ p'.hp := hlive
          have hE' := hord'.2.1
          refine mnk_tail' hC (src := .var .global (nm "mpt_hash_scratch")) (nE := cw 32) (lE := cw 64)
            (S := hsc) (N := BitVec.ofNat 64 32) (L := BitVec.ofNat 64 64) (p := p) (p' := p') (KL := KL)
            (P := fun t => t = setVarHOLFinite (nm "nb") (.val (.word q)) { st with locals := s.locals })
            ?_ (Or.inr (by have : (BitVec.ofNat 64 32).toNat = 32 := by decide
                           omega)) ⟨hord', hmono, hq8, hlive'.1, by rw [h64]; exact hlive'.2,
              fun x h1 h2 => hfree x h1 (by rw [h64] at h2; exact h2), Or.inl h64⟩
          intro t ht
          subst ht
          refine ⟨lk_set_self _ _ _, hp', ?_, ev_cw _ 32, fun t' _ => ev_cw _ 64⟩
          apply Band4.mnk_ev_glob
          apply MemSafe.AllocImpl.gword_of_lookup
          show st.globals.lookup _ = _
          rw [hglob _ (by decide)]
          show s.globals.lookup _ = _
          rw [hgs]
          exact Band4.mnk_gword_lookup hsw
  · have h2KL : (BitVec.ofNat 64 2 * KL).toNat = 2 * KL.toNat := by
      rw [BitVec.toNat_mul, BitVec.toNat_ofNat]
      exact Nat.mod_eq_of_lt (by omega)
    refine hoareG_decCallQ (allocSpec_alloc hC) (fun r t L h => ?_) ?_
      (fun s hs hPs vs hvs callee r st hR hst habn => mnkq0_abn habn)
    · obtain ⟨h1, h2⟩ := h
      exact ⟨h1, fun v hv => by
        obtain ⟨nb, L', p', hv', hp', hb⟩ := h2 v hv
        exact ⟨nb, L', p', hv', hp', hb⟩⟩
    · intro s hs hPs vs hvs callee v st hR hst hsh
      obtain ⟨hs0, -⟩ := hPs
      subst hs0
      rw [evs_cons (ev_mul2 (ev_cw _ 2) (ev_lw hkl)) evs_nil] at hvs
      simp only [Option.some.injEq] at hvs
      subst hvs
      have hpe : ptrsOf (callEntryStateHOLFinite s callee) = some p := hp
      obtain ⟨hmem, hglob, p', hp', hord', hmono, hret⟩ := hR (by simp [Good]) _ p rfl hpe hord
      obtain ⟨q, rfl, hq8, hlive, hfree⟩ := hret _ rfl
      rw [h2KL] at hlive hfree
      have hlive' : heapBase ≤ q.toNat ∧ q.toNat + 2 * KL.toNat ≤ p'.hp := hlive
      have hE' := hord'.2.1
      refine mnk_tail' hC (src := lv (nm "key")) (nE := lv (nm "klen"))
        (lE := .panop .mul [cw 2, lv (nm "klen")]) (S := K) (N := KL) (L := BitVec.ofNat 64 2 * KL)
        (p := p) (p' := p') (KL := KL)
        (P := fun t => t = setVarHOLFinite (nm "nb2") (.val (.word q)) { st with locals := s.locals })
        ?_ (Or.inr (by omega)) ⟨hord', hmono, hq8, hlive'.1, by rw [h2KL]; exact hlive'.2,
          fun x h1 h2 => hfree x h1 (by rw [h2KL] at h2; exact h2), Or.inr h2KL⟩
      intro t ht
      subst ht
      refine ⟨lk_set_self _ _ _, hp', ev_lw (by rw [lk_set_ne _ _ (by decide)]; exact hk),
        ev_lw (by rw [lk_set_ne _ _ (by decide)]; exact hkl), fun t' ht' => ?_⟩
      exact ev_mul2 (ev_cw _ 2) (ev_lw (by rw [ht', lk_set_ne _ _ (by decide)]; exact hkl))

theorem mnk_fresh (hC : X.code.lookup = guestCode) (hA : AlignedDom X) (hT : DomTop X)
    (hX0 : DomBounded X) :
    FunSpec σ X (nm "mpt_nibble_key") (fun vs s r t => Good (some r) → ∀ v, r = .returned v →
      ∀ (M K KL ks kp hsc : BitVec 64) (p : Ptrs), vs = [.val (.word M), .val (.word K), .val (.word KL)] →
        ptrsOf s = some p → p.Ordered → 2 * KL.toNat < 2 ^ 64 → KOK s ks kp →
        gword s (nm "mpt_hash_scratch") = some hsc → hsc.toNat + 32 < 2 ^ 64 →
        ∃ nb L : BitVec 64, ∃ p' : Ptrs, v = .rStruct [.val (.word nb), .val (.word L)] ∧
          ptrsOf t = some p' ∧ MnkBlk p p' KL nb L) := by
  refine funSpecG_of_hoareG (R := fun vs s r t => ∀ v, r = .returned v →
      ∀ (M K KL ks kp hsc : BitVec 64) (p : Ptrs), vs = [.val (.word M), .val (.word K), .val (.word KL)] →
        ptrsOf s = some p → p.Ordered → 2 * KL.toNat < 2 ^ 64 → KOK s ks kp →
        gword s (nm "mpt_hash_scratch") = some hsc → hsc.toNat + 32 < 2 ^ 64 →
        ∃ nb L : BitVec 64, ∃ p' : Ptrs, v = .rStruct [.val (.word nb), .val (.word L)] ∧
          ptrsOf t = some p' ∧ MnkBlk p p' KL nb L) ?_
  intro vs body callee rs hl s0 hs hloc
  rw [hC] at hl
  obtain ⟨rfl, -, Mv, Kv, KLv, rfl, hsM, hsK, hsKL, hlm, hlk, hlkl⟩ :=
    lookupCode_three MptH.code_mpt_nibble_key (by decide) (by decide) (by decide) hl
  intro t ht hP hg r' hr' v hv M K KL ks kp hsc p hvs hp hord hKL hK hsw hs32
  obtain rfl := hP
  simp only [List.cons.injEq, and_true] at hvs
  obtain ⟨rfl, rfl, rfl⟩ := hvs
  have := mnk_main hC hA hT hX0 hp hord hKL hK hsw hs32 (by rw [hloc]; exact hlm)
    (by rw [hloc]; exact hlk) (by rw [hloc]; exact hlkl) t ht rfl hg
  rw [hr'] at this
  exact this.2 v (by rw [hv])

end InitECandidate.Solver.MemSafe.Trie
