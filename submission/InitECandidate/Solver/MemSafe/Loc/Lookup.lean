import InitECandidate.Solver.MemSafe.Loc.Walk
import InitECandidate.Solver.Band4.K2n

set_option autoImplicit false

/-!
# `trie_lookup`: what it returns (sonnet-loc, deliverable 2)

`trie_lookup(root, key_hash32)`: `key_to_nibbles(key_hash32, 32, mpt_nib_scratch); return trie_walk(root,
mpt_nib_scratch, 64)`.  `lookup_spec`: for a null-or-`Nd` root, closed `Nd` and `NibSep s Nd`, a returned
`<x, y, z>` with `x ≠ 0` is the value slice of an `Nd` node of the *entry* memory.
-/

set_option maxRecDepth 1000000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Loc
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe
open InitECandidate.Solver.MemSafe.St2 (ValOf NibSep)
open InitECandidate.Solver.Spec.Mpt (NullOrNd NdClosed byteOf nsz nsz_le nsz_ge)

variable {σ : Type} {X : Ctx 64}

def tlBody : ProgHOL 64 :=
  .seq (callD (nm "key_to_nibbles") [lv (nm "key_hash32"), cw 32, .var .global (nm "mpt_nib_scratch")])
    (.call none (nm "trie_walk") [lv (nm "root"), .var .global (nm "mpt_nib_scratch"), cw 64])

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem entry_trie_lookup : fnEntry Guest.Software.guestFn_trie_lookup =
    (nm "trie_lookup", [(nm "root", .one), (nm "key_hash32", .one)], tlBody, shape3) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_trie_lookup : guestCode (nm "trie_lookup") =
    some ([(nm "root", .one), (nm "key_hash32", .one)], tlBody, shape3) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 267) (by decide)) ⟨_, rfl⟩
    entry_trie_lookup

/-! ## Node cells are not touched by the nibble scratch -/

/-- The cells of the nodes of `Nd` (sized by the tags of `M`) agree in `M'`. -/
def NodeFrame (Nd : BitVec 64 → Prop) (M M' : Mem) : Prop :=
  ∀ a, Nd a → ∀ c : BitVec 64, a.toNat ≤ c.toNat → c.toNat < a.toNat + nsz (rd M a) → M' c = M c

theorem rd_nf {Nd M M'} (hf : NodeFrame Nd M M') {a c : BitVec 64} (ha : Nd a)
    (h1 : a.toNat ≤ c.toNat) (h2 : c.toNat < a.toNat + nsz (rd M a)) : rd M' c = rd M c := by
  unfold rd; rw [hf a ha c h1 h2]

theorem nodeFrame_of_sep {Nd : BitVec 64 → Prop} {M M' : Mem} {O : BitVec 64} (hO8 : O.toNat % 8 = 0)
    (hsep : ∀ a, Nd a → a.toNat + nsz (rd M a) ≤ O.toNat ∨ O.toNat + 64 ≤ a.toNat)
    (hm : MemSafe.ModifiesOnly (MemSafe.Overlap O.toNat 64) M M') : NodeFrame Nd M M' := by
  intro a ha c h1 h2
  refine hm c ?_
  rintro ⟨hc8, hc1, hc2⟩
  rcases hsep a ha with h | h <;> omega

theorem tag_cells {Nd : BitVec 64 → Prop} {M M' : Mem} (hf : NodeFrame Nd M M') {n : BitVec 64}
    (hn : Nd n) (hb : n.toNat + 176 < 2 ^ 64) {k : Nat} (hk : k < nsz (rd M n)) :
    rd M' (n + BitVec.ofNat 64 k) = rd M (n + BitVec.ofNat 64 k) := by
  have hnsz := nsz_le (rd M n)
  rw [rd_nf hf hn (c := n + BitVec.ofNat 64 k) (by rw [toNat_off (by omega)]; omega)
    (by rw [toNat_off (by omega)]; omega)]

theorem valOf_transport {Nd : BitVec 64 → Prop} {M M' : Mem} (hf : NodeFrame Nd M M')
    {n y z : BitVec 64} (hn : Nd n) (hb : n.toNat + 176 < 2 ^ 64) (h : ValOf M' n y z) :
    ValOf M n y z := by
  have e0 : rd M' n = rd M n := by
    have := tag_cells hf hn hb (k := 0) (by have := nsz_ge (rd M n); omega)
    simpa using this
  rcases h with ⟨h1, h2, h3⟩ | ⟨h1, h2, h3, h4, h5⟩
  · rw [e0] at h1
    have hn1 : nsz (rd M n) = 64 := by rw [h1]; decide
    refine Or.inl ⟨h1, ?_, ?_⟩
    · rw [h2]; exact tag_cells hf hn hb (k := 48) (by omega)
    · rw [h3]; exact tag_cells hf hn hb (k := 56) (by omega)
  · rw [e0] at h1 h2 h3
    have hn1 : nsz (rd M n) = 176 := by
      unfold nsz; rw [if_neg h1, if_neg h2, if_neg h3]
    refine Or.inr ⟨h1, h2, h3, ?_, ?_⟩
    · rw [h4]; exact tag_cells hf hn hb (k := 160) (by omega)
    · rw [h5]; exact tag_cells hf hn hb (k := 168) (by omega)


theorem ndClosed_transport {Nd : BitVec 64 → Prop} {M M' : Mem} (hf : NodeFrame Nd M M')
    (hCl : NdClosed M Nd) : NdClosed M' Nd := by
  intro a ha
  obtain ⟨h32, h2, hb⟩ := hCl a ha
  have hE : heapEnd < 2 ^ 62 := by decide
  have hb176 : a.toNat + 176 < 2 ^ 64 := by omega
  have e0 : rd M' a = rd M a := by
    have := tag_cells hf ha hb176 (k := 0) (by have := nsz_ge (rd M a); omega)
    simpa using this
  refine ⟨h32, fun h => ?_, fun h0 h1 h2' => ?_⟩
  · rw [e0] at h
    obtain ⟨hh, hn⟩ := h2 h
    refine ⟨hh, ?_⟩
    have : nsz (rd M a) = 56 := by rw [h]; decide
    have := tag_cells hf ha hb176 (k := 48) (by omega)
    rw [show rd M' (a + 48) = rd M' (a + BitVec.ofNat 64 48) from rfl, this]
    exact hn
  · rw [e0] at h0 h1 h2'
    obtain ⟨hh, hn⟩ := hb h0 h1 h2'
    refine ⟨hh, fun i hi => ?_⟩
    have hn1 : nsz (rd M a) = 176 := by
      unfold nsz; rw [if_neg h0, if_neg h1, if_neg h2']
    rw [tag_cells hf ha hb176 (k := 32 + 8 * i) (by omega)]
    exact hn i hi

theorem wok_transport {Nd : BitVec 64 → Prop} {M M' : Mem} (hf : NodeFrame Nd M M')
    (hCl : NdClosed M Nd) {v : ValueHOL 64} (h : WOK Nd M' v) : WOK Nd M v := by
  intro x y z hv hx
  obtain ⟨n, hn, hval⟩ := h x y z hv hx
  have hE : heapEnd < 2 ^ 62 := by decide
  have := (hCl n hn).1
  exact ⟨n, hn, valOf_transport hf hn (by omega) hval⟩


open InitECandidate.Solver.MemSafe.Helpers (foot_key_to_nibbles BufPre2 BufR2)
open InitECandidate.Solver.Band4 (ret_key_to_nibbles NibOK)

/-- **`trie_lookup`'s return fact.** -/
theorem lookup_spec (hC : X.code.lookup = guestCode) (hNS : NullSafe X) :
    FunSpec σ X (nm "trie_lookup") (fun vs s r t => ∀ v, r = .returned v →
      ∀ (Nd : BitVec 64 → Prop) (N H : BitVec 64), vs = [.val (.word N), .val (.word H)] →
        NullOrNd Nd N → NdClosed s.memory Nd → NibSep s Nd → WOK Nd s.memory v) := by
  refine funSpec_of_hoare (R := fun vs s v t => ∀ (Nd : BitVec 64 → Prop) (N H : BitVec 64),
        vs = [.val (.word N), .val (.word H)] → NullOrNd Nd N → NdClosed s.memory Nd →
        NibSep s Nd → WOK Nd s.memory v) fun vs body callee rs hl s0 hs0 hloc => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, rfl, hsa, hsb, hlA, hlB⟩ :=
    lookupCode_two code_trie_lookup (by decide) hl
  obtain ⟨A, rfl⟩ := val_of_shapeEq_one hsa
  obtain ⟨B, rfl⟩ := val_of_shapeEq_one hsb
  intro s hs hP htr v hv Nd N H hvs hNd hCl hSep
  subst hP
  simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hvs
  obtain ⟨rfl, rfl⟩ := hvs
  obtain ⟨O, hgO, hO8, hOb1, hOb2, hsep⟩ := hSep
  have hE : heapEnd < 2 ^ 62 := by decide
  have hSE : heapEnd ≤ scratchEnd := by decide
  have hgl : s.globals.lookup (nm "mpt_nib_scratch") = some (.val (.word O)) := AllocImpl.lookup_of_gword hgO
  have hlr : s.locals.lookup (nm "root") = some (.val (.word A)) := by rw [hloc]; exact hlA
  have hlk : s.locals.lookup (nm "key_hash32") = some (.val (.word B)) := by rw [hloc]; exact hlB
  suffices H : Hoare σ X (fun t => t = s) tlBody
      (fun r t => ∀ v, r = some (.returned v) → WOK Nd s.memory v) from H s hs rfl htr v hv
  unfold tlBody
  refine hoare_seq (R := fun r t => r = none ∧ t.globals = s.globals ∧ t.locals = s.locals ∧
      NodeFrame Nd s.memory t.memory ∧ NibOK t.memory s.be O 64 ∧ t.be = s.be) ?_
    (fun r t _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_callD ((foot_key_to_nibbles hC).and (ret_key_to_nibbles hC)) ?_
    intro u _ hu vs hvs callee w st ⟨hfoot, hret⟩ _
    subst hu
    rw [evs_cons (ev_lw hlk) (evs_cons (ev_cw _ 32) (evs_cons (by rw [ev_gv]; exact hgl) evs_nil))] at hvs
    simp only [Option.some.injEq] at hvs
    subst hvs
    have hON : O.toNat + 2 * (BitVec.ofNat 64 32).toNat < 2 ^ 64 := by
      simp only [BitVec.toNat_ofNat]; omega
    obtain ⟨hg, hm⟩ := hfoot (by simp [Good]) ⟨O, BitVec.ofNat 64 32, rfl, rfl, Or.inr (by
      simp only [BitVec.toNat_ofNat]; omega)⟩
    obtain ⟨hbe, hnib⟩ := hret _ _ _ rfl hON w rfl
    refine ⟨rfl, hg, rfl, ?_, ?_, hbe⟩
    · refine nodeFrame_of_sep hO8 hsep (hm.mono ?_)
      rintro a ⟨D, N', hD, hN, hov⟩
      simp [argW, wordOf] at hD hN
      subst hD; subst hN
      simpa using hov
    · exact hnib
  · refine hoare_pre (P := fun t => t.globals = s.globals ∧ t.locals = s.locals ∧
        NodeFrame Nd s.memory t.memory ∧ NibOK t.memory s.be O 64 ∧ t.be = s.be) ?_
      (fun t _ h => h.2)
    refine hoare_tailCall (walk_spec hC hNS) ?_
    intro t _ ⟨hg, hl2, hnf, hnib, hbe⟩ vs hvs callee v' st hR _ w hw
    simp only [Option.some.injEq, PanSemResultExact.returned.injEq] at hw
    subst hw
    have hglt : t.globals.lookup (nm "mpt_nib_scratch") = some (.val (.word O)) := by rw [hg]; exact hgl
    have hlrt : t.locals.lookup (nm "root") = some (.val (.word A)) := by rw [hl2]; exact hlr
    rw [evs_cons (ev_lw hlrt) (evs_cons (by rw [ev_gv]; exact hglt) (evs_cons (ev_cw _ 64) evs_nil))] at hvs
    simp only [Option.some.injEq] at hvs
    subst hvs
    have := hR _ rfl Nd A O (BitVec.ofNat 64 64) rfl hNd (ndClosed_transport hnf hCl)
      (by
        intro j hj
        have := hnib j (by simpa using hj)
        show byteOf t.memory t.be _ < 16
        rw [hbe]
        exact this)
    exact wok_transport hnf hCl this

end InitECandidate.Solver.MemSafe.Loc

#print axioms InitECandidate.Solver.MemSafe.Loc.lookup_spec
