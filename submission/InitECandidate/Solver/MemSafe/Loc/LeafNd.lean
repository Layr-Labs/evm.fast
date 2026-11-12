import InitECandidate.Solver.MemSafe.Loc.LeafPtrs
import InitECandidate.Solver.Spec.Mpt.Leaves.FinKeccak

set_option autoImplicit false

/-!
# `ws_account_leaf`: the located value slice (sonnet-loc, deliverable 2, second conjunct)

`leaf_nd`: given `NdPrem s Nd` and `RootSep s q`, a returned `<x, y, z>` with `x ≠ 0` is the value slice of
an `Nd` node of the entry memory.  The root `lds 1 (ws + 24)` is read after `keccak256`, so the cell must
not be one the call can write (`RootSep`).
-/

set_option maxRecDepth 1000000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Loc
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe
open InitECandidate.Solver.MemSafe.St2 (ValOf NibSep NdPrem)
open InitECandidate.Solver.Spec.Mpt (NullOrNd NdClosed byteOf nsz KBuf gKst gKpad)
open InitECandidate.Solver.Spec.Mpt.Leaves (hoare_decL hoare_decCallL ret_keccak256 KOK KIn DomTop)

variable {σ : Type} {X : Ctx 64}

/-- The cell `ws + 24` (the state-trie root slot) is allocated and not a keccak buffer cell. -/
def RootSep (s : State σ) (q : Ptrs) : Prop :=
  ∀ wp, gword s (nm "ws") = some wp → s.memaddrs (wp + 24) →
    q.Allocated (wp + 24).toNat ∧ ¬ KBuf s (wp + 24)


open InitECandidate.Solver.Spec.Mpt.Leaves (kIn_kbuf)

theorem leaf_nd (hC : X.code.lookup = guestCode) (hA : MemSafe.Helpers.AlignedDom X) (hT : DomTop X)
    (hNS : NullSafe X) :
    FunSpec σ X (nm "ws_account_leaf") (fun _ s r t => ∀ v, r = .returned v →
      ∀ q, ptrsOf s = some q → q.Ordered → RootSep s q → ∀ Nd, NdPrem s Nd → WOK Nd s.memory v) := by
  refine funSpec_of_hoare (R := fun vs s v t => ∀ q, ptrsOf s = some q → q.Ordered → RootSep s q →
      ∀ Nd, NdPrem s Nd → WOK Nd s.memory v) fun vs body callee rs hl s0 hs0 hloc => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, A, rfl, hsa, hla⟩ := lookupCode_one code_ws_account_leaf hl
  obtain ⟨A, rfl⟩ := val_of_shapeEq_one hsa
  intro s hs hP htr v hv q hq ho hRS Nd hND
  subst hP
  obtain ⟨hCl, hroot, ⟨pp, hpp, hTrie, hVB⟩, hNibSep⟩ := hND
  have hpq : pp = q := by rw [hq] at hpp; exact (Option.some.inj hpp).symm
  subst pp
  obtain ⟨hShape, -, hKB, -⟩ := hTrie
  obtain ⟨ks, kp, hks, hkp, hks8, hkp8, hksb, hkse, hkpb, hkpe, hsepk⟩ := hKB
  obtain ⟨O, hgO, hO8, hOb1, hOb2, hsepO⟩ := hNibSep
  have hE : heapEnd < 2 ^ 62 := by decide
  have hqo := ho
  obtain ⟨H0, F0, S0, hgH, hgF, hgS, hqe⟩ := AllocImpl.ptrsOf_some hq
  have hqh : q.hp ≤ heapEnd := ho.2.1
  have hKOK : KOK s ks kp := ⟨hks, hkp, hks8, hkp8, by omega, by omega⟩
  suffices H : Hoare σ X (fun t => t = s) leafBody
      (fun r t => ∀ v, r = some (.returned v) → WOK Nd s.memory v) from H s hs rfl htr v hv
  unfold leafBody
  -- `heap_mark()`
  refine hoare_decCallL (markSpec'_heap_mark hC) (fun _ _ _ h => h)
    fun s1 _ hP vs hvs callee v1 st1 hR1 _ hsh1 => ?_
  subst s1
  have hvs0 : vs = [] := by rw [evs_nil] at hvs; exact (Option.some.inj hvs).symm
  subst hvs0
  obtain ⟨hm1, hg1, hv1⟩ := hR1 (by simp [Good]) rfl
  have hv1' : v1 = .val (.word H0) := mark_val_word (hv1 v1 rfl) hgH
  subst hv1'
  set u1 := setVarHOLFinite (nm "mark") (.val (.word H0)) { st1 with locals := s.locals } with hu1
  have hq1 : ptrsOf u1 = some q := (Spec.Mpt.ptrsOf_frame (by rw [hu1]; exact hg1)).trans hq
  -- `alloc(32)`
  refine hoare_decCallL (allocSpec_alloc hC) (fun _ _ _ h => h)
    fun s2 _ hP2 vs2 hvs2 callee2 v2 st2 hR2 _ hsh2 => ?_
  subst s2
  rw [evs_cons (ev_cw _ 32) evs_nil] at hvs2
  simp only [Option.some.injEq] at hvs2
  subst hvs2
  obtain ⟨hm2, hg2, p2, hp2, ho2, hmono2, hret2⟩ := hR2 (by simp [Good]) _ q rfl hq1 ho
  obtain ⟨T, rfl, hT8, hLive, hfresh⟩ := hret2 v2 rfl
  set u2 := setVarHOLFinite (nm "h") (.val (.word T)) { st2 with locals := u1.locals } with hu2
  have hmem2 : u2.memory = s.memory := by
    show st2.memory = s.memory
    rw [hm2]; exact hm1
  have hgl2 : ∀ g, g ≠ gHeap → u2.globals.lookup g = s.globals.lookup g := by
    intro g hg
    show st2.globals.lookup g = _
    rw [hg2 g hg]
    show st1.globals.lookup g = _
    rw [hg1]
    rfl
  have h32 : (32#64 : BitVec 64).toNat = 32 := by decide
  rw [h32] at hLive hfresh
  have hLive' : heapBase ≤ T.toNat ∧ T.toNat + 32 ≤ p2.hp := hLive
  have hTq : q.hp ≤ T.toNat := by
    by_contra hlt
    exact hfresh T.toNat le_rfl (by omega) (Or.inl ⟨by omega, by omega⟩)
  have hp2h : p2.hp ≤ heapEnd := ho2.2.1
  have gw2 : ∀ g, g ≠ gHeap → gword u2 g = gword s g := fun g hg => by
    unfold gword; rw [hgl2 g hg]
  have hla2 : u2.locals.lookup (nm "addr") = some (.val (.word A)) := by
    rw [hu2, lk_set_ne _ _ (by decide)]
    show u1.locals.lookup _ = _
    rw [hu1, lk_set_ne _ _ (by decide)]
    show s.locals.lookup _ = _
    rw [hloc]; exact hla
  have hh2 : u2.locals.lookup (nm "h") = some (.val (.word T)) := lk_set_self _ _ _
  have hmark2 : u2.locals.lookup (nm "mark") = some (.val (.word H0)) := by
    rw [hu2, lk_set_ne _ _ (by decide)]
    show u1.locals.lookup _ = _
    rw [hu1]; exact lk_set_self _ _ _
  -- `keccak256(addr, 20, h)`
  refine hoare_seq (R := fun r t => r = none ∧ t.locals = u2.locals ∧
      (∀ g, g ≠ gHeap → t.globals.lookup g = s.globals.lookup g) ∧
      MemSafe.ModifiesOnly (fun a => KIn ks kp a ∨ MemSafe.Overlap T.toNat 32 a) s.memory t.memory)
    ?_ (fun r t _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_callD (ret_keccak256 hC hA hT) ?_
    intro s3 _ hP3 vs3 hvs3 callee3 v3 st3 hR3 _
    subst s3
    rw [evs_cons (ev_lw hla2) (evs_cons (ev_cw _ 20) (evs_cons (ev_lw hh2) evs_nil))] at hvs3
    simp only [Option.some.injEq] at hvs3
    subst hvs3
    have hK : KOK (u2.callEntryStateHOLFinite callee3) ks kp :=
      ⟨(gw2 gKst (by decide)).trans hks, (gw2 gKpad (by decide)).trans hkp, hks8, hkp8,
        by omega, by omega⟩
    obtain ⟨hg3, hmod3⟩ := hR3 _ rfl A (BitVec.ofNat 64 20) T ks kp rfl hK (by omega)
    refine ⟨rfl, rfl, fun g hg => ?_, ?_⟩
    · show st3.globals.lookup g = _
      rw [hg3]; exact hgl2 g hg
    · show MemSafe.ModifiesOnly _ s.memory st3.memory
      rw [← hmem2]; exact hmod3
  -- `trie_lookup(lds 1 (ws + 24), h)`
  refine hoare_decCallL (lookup_spec hC hNS) (fun _ _ _ h => h)
    fun s4 hs4 ⟨_, hl4, hg4, hmod4⟩ vs4 hvs4 callee4 v4 st4 hR4 _ hsh4 => ?_
  have hf : NodeFrame Nd s.memory s4.memory := by
    intro a ha c hc1 hc2
    refine hmod4 c ?_
    rintro (hk | ⟨hc8, hc3, hc4⟩)
    · rcases hk with ⟨k1, k2⟩ | ⟨k1, k2⟩
      · rcases (hsepk a ha).1 with h | h <;> omega
      · rcases (hsepk a ha).2 with h | h <;> omega
    · have := (hShape a ha).2.1
      omega
  have hrdtag : ∀ a, Nd a → rd s4.memory a = rd s.memory a := fun a ha =>
    rd_nf hf ha le_rfl (by have := Spec.Mpt.nsz_ge (rd s.memory a); omega)
  obtain ⟨x1, r1, rfl, hx1, hr1⟩ := evs_cons_inv hvs4
  obtain ⟨x2, r2, rfl, hx2, hr2⟩ := evs_cons_inv hr1
  simp only [evs, evalListHOLExact, Option.some.injEq] at hr2
  subst hr2
  have hx2' : x2 = .val (.word T) := by
    rw [ev_lw (by rw [hl4]; exact hh2)] at hx2; exact (Option.some.inj hx2).symm
  subst hx2'
  obtain ⟨a, ha, hdom, hx1e⟩ := ev_load_one hx1
  obtain ⟨y, z, hy, hz, hyz⟩ := ev_add2_inv ha
  rw [ev_gv] at hy
  rw [ev_cw] at hz
  simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hz
  subst hz
  subst hyz
  have hgw : gword s (nm "ws") = some y :=
    AllocImpl.gword_of_lookup (by rw [← hg4 _ (by decide)]; exact hy)
  have hmem' : s.memaddrs (y + BitVec.ofNat 64 24) := by
    have h1 := hs4.2.1
    have h2 := hs.2.1
    rw [← h2] at h1
    rw [← h1]; exact hdom
  obtain ⟨hAl, hnK⟩ := hRS y hgw hmem'
  have hroot' : rd s4.memory (y + BitVec.ofNat 64 24) = rd s.memory (y + BitVec.ofNat 64 24) := by
    unfold rd
    rw [hmod4 _ ?_]
    rintro (hk | ⟨hc8, hc3, hc4⟩)
    · exact hnK (kIn_kbuf hKOK hk)
    · by_cases hge : T.toNat ≤ (y + BitVec.ofNat 64 24).toNat
      · exact hfresh _ hge (by omega) hAl
      · omega
  have hx1v : x1 = .val (.word (rd s.memory (y + BitVec.ofNat 64 24))) := by
    rw [hx1e, Spec.Mpt.mem_word s4.memory _, hroot']
  have hNdR : NullOrNd Nd (rd s.memory (y + BitVec.ofNat 64 24)) := hroot y hgw hmem'
  have hCl4 : NdClosed s4.memory Nd := ndClosed_transport hf hCl
  have hSep4 : NibSep s4 Nd := by
    refine ⟨O, ?_, hO8, hOb1, hOb2, fun a ha => ?_⟩
    · unfold gword; rw [hg4 _ (by decide)]; exact hgO
    · rw [hrdtag a ha]; exact hsepO a ha
  have hW := hR4 _ rfl Nd (rd s.memory (y + BitVec.ofNat 64 24)) T (by rw [hx1v]) hNdR hCl4 hSep4
  have hW' : WOK Nd s.memory v4 := wok_transport hf hCl hW
  have hmark4 : (setVarHOLFinite (nm "r") v4 { st4 with locals := s4.locals }).locals.lookup (nm "mark") =
      some (.val (.word H0)) := by
    rw [lk_set_ne _ _ (by decide)]
    show s4.locals.lookup _ = _
    rw [hl4]; exact hmark2
  refine hoare_seq (R := fun r t => r = none ∧ t.locals.lookup (nm "r") = some v4) ?_
    (fun r t _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_callD (releaseSpec_heap_release hC) ?_
    intro s5 _ hP5 vs5 hvs5 callee5 v5 st5 hR5 _
    subst s5
    exact ⟨rfl, lk_set_self _ _ _⟩
  · refine hoare_return fun t _ ⟨_, hr⟩ v5 hv5 v' hv' => ?_
    rw [ev_lv, hr] at hv5
    cases hv5
    simp only [Option.some.injEq, PanSemResultExact.returned.injEq] at hv'
    subst hv'
    exact hW'

end InitECandidate.Solver.MemSafe.Loc

#print axioms InitECandidate.Solver.MemSafe.Loc.leaf_nd
