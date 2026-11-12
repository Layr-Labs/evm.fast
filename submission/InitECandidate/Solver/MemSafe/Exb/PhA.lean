import InitECandidate.Solver.MemSafe.Exb.PhM
import InitECandidate.Solver.MemSafe.Mod.Args

/-!
# `payload_header`, the head: the header record and its buffers, up to `block_rlp_length`

Every store goes to `h + off`, at or above `H`, while all objects lie below `H` (`EA`). `ph_stH` needs no value facts: a store's cells are outside `Γ` and unallocated at the
ghost entry, whatever its width. The coinbase cell `h + 24` is the only one tracked: later stores are at higher offsets, later blocks lie above the header.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Exb
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn

variable {σ : Type}

macro "ph_freshL" : tactic =>
  `(tactic| (apply ivFresh_of; simp only [List.map_cons, List.map_nil]; decide))

theorem ea_step {p0 : Ptrs} {PL C H : BitVec 64} {bs : List (BitVec 64 × Nat)} {ck : Mem → Prop} {Γ Γ' : Gam} {q q' : Ptrs}
    {m m' : Mem} {g g' : LocalsH} (hord : q.Ordered) (hord' : q'.Ordered) (hL' : Layout Types.guestC q' Γ') (hext : Ext Γ Γ')
    (hnf : NewFresh Γ Γ' q q) (hmo : q.Mono q') (hck : ck m → ck m') (h : EA p0 PL C H bs ck Γ q m g) :
    EA p0 PL C H bs ck Γ' q' m' g' :=
  ⟨phI_step hord' hL' hext hnf hmo h.i, below_nf hord' hL' hnf h.bh, h.p0h, h.al, h.top,
    Trie.fblk_persist h.fH hord.2.1 hnf hmo, fbs_step hord hnf hmo h.fbs, h.abv, hck h.ck⟩

section body
variable {a : Act σ} (ha : ActOK a guestCtx) (haC : a.C = Types.guestC) (hCb : a.Cb = Types.guestC)
  (haH : a.H = Hooks.guestHooksR (σ := σ)) (hfp : a.p0.fp = heapEnd) (hsp : a.p0.sp = scratchEnd)
  (hgr : a.sg.grows = true)
include ha hfp hsp

/-- A store into the header, at offset `off`. -/
theorem ph_stH {Rv : Gam → Ptrs → Mem → LocalsH → ValueHOL 64 → Prop} {kv : List (MlS × ValueHOL 64)}
    {PL C H : BitVec 64} {bs : List (BitVec 64 × Nat)} {ck : Mem → Prop} {off : Nat} {e : ExpHOL 64} (hoff : off ≤ 248)
    (hH : (nm "h", Wv H) ∈ kv)
    (hck : ∀ (m mem : Mem) (w : BitVec 64), H.toNat + 248 ≤ heapEnd → ck m →
      ModifiesOnly (fun x => w.toNat ≤ x.toNat) m mem → H.toNat + off ≤ w.toNat → ck mem) :
    HoareG σ guestCtx (PJ a (Trie.LV kv) (EA a.p0 PL C H bs ck)) (.store (.op .add [lv (nm "h"), cw off]) e)
      (PP a (Trie.LV kv) (EA a.p0 PL C H bs ck) Rv) := by
  have he : heapEnd < 2 ^ 63 := by decide
  have haddr : ∀ (s : State σ) (w : BitVec 64), Trie.LV kv s.locals → H.toNat + 248 ≤ heapEnd →
      ev s (.op .add [lv (nm "h"), cw off]) = some (.val (.word w)) → w.toNat = H.toNat + off := by
    intro s w hL hb hw
    rw [ev_add2 (Trie.lv_ev hL hH) (ev_cw s off)] at hw
    cases hw
    exact ofNat_add_toNat (by omega)
  refine pp_stAbove ha hfp hsp Aw.domBelow_guestCtx (Hb := H.toNat) (fun Γ q m g h => ⟨h.bh, h.p0h, h.al⟩)
    (fun s Γ q _ hL hE w hw => by rw [haddr s w hL hE.top hw]; omega) (fun s Γ q w mem _ hL hw hE hm => ?_)
  exact ⟨hE.i, hE.bh, hE.p0h, hE.al, hE.top, hE.fH, hE.fbs, hE.abv,
    hck _ _ w hE.top hE.ck hm (by rw [haddr s w hL hE.top hw])⟩

include haC hCb haH

/-- A later block: `var x = alloc(n); k`. -/
theorem ph_alloc {Rv : Gam → Ptrs → Mem → LocalsH → ValueHOL 64 → Prop} {kv : List (MlS × ValueHOL 64)} {x : MlS}
    (hx : ∀ p ∈ kv, p.1 ≠ x) {n : Nat} (hn : n < 2 ^ 60) (hn8 : n % 8 = 0) {PL C H : BitVec 64} {bs : List (BitVec 64 × Nat)}
    {ck : Mem → Prop} {k : ProgHOL 64} {L2 : LocalsH → Prop} {E2 : Gam → Ptrs → Mem → LocalsH → Prop}
    (hk : ∀ B, HoareG σ guestCtx (PJ a (Trie.LV ((x, Wv B) :: kv)) (EA a.p0 PL C H ((B, n) :: bs) ck)) k (PP a (fun _ => False) E2 Rv)) :
    HoareG σ guestCtx (PJ a (Trie.LV kv) (EA a.p0 PL C H bs ck)) (.decCall x .one (nm "alloc") [cw n] k) (PP a L2 E2 Rv) := by
  have hX := (Rec.foldOK_guestR (σ := σ)).hX
  have hZ : (BitVec.ofNat 64 n).toNat = n := by rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)]
  refine pp_decCall ha (Trie.sa_cast hCb haH Dn.alloc_R) (Trie.funSpec_allocRel hX) (by simp) (fun h => by simp at h)
    (L1 := fun v m => ∃ B : BitVec 64, v = Wv B ∧ Trie.LV ((x, v) :: kv) m)
    (E1 := fun v Γ q m g => ∀ B : BitVec 64, v = Wv B → EA a.p0 PL C H ((B, n) :: bs) ck Γ q m g) (L2 := fun _ => False)
    ?_ ?_ ?_ ?_ (fun _ _ _ h => h.elim)
  · intro s Γ q _ hL hh hE vs hvs
    exact ⟨(anyArgsG (by simp) rfl hvs).1, fun y hy => (argCells_any (by simp) hy).elim, fun _ => trivial⟩
  · intro s st vs callee v Γ Γ' q q' _ hL hvs hE hLc hQ hh hext hh' hmo hnf hnfp hmd hret hsh B hB
    rw [evs_cons (ev_cw s n) evs_nil] at hvs
    cases hvs
    have hnoarg : ∀ y, ¬ ArgCells ([.any] : List PT) [Wv (BitVec.ofNat 64 n)] y := fun y => argCells_any (by simp)
    have co : CO a ⟨[PT.any], [RT.freshArg 0 1 0], [], false⟩ [Wv (BitVec.ofNat 64 n)] Γ Γ' q q' s st (.returned v) :=
      ⟨hh, hext, hh', hmo, hnf, hnfp, fun y hw hal => hmd y hw (hnoarg y) (by rintro ⟨-, c, hc, -⟩; simp at hc) hal,
        fun v' hv' => by cases hv'; exact hret⟩
    obtain ⟨H', hv', hHn, hFB, hmem⟩ := Trie.alloc_fblk haC rfl co hLc rfl (by rw [hZ]; exact hn8)
    rw [hB] at hv'
    simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hv'
    subst hv'
    rw [hZ] at hFB
    have hord := heap_ord hh
    have hE1 := ea_step (m' := st.memory) (g' := st.globals) hord (heap_ord hh') (Ra.layout_heap haC hh') hext (hnfp rfl) hmo
      (fun h => by rw [hmem]; exact h) hE
    refine ⟨hE1.i, hE1.bh, hE1.p0h, hE1.al, hE1.top, hE1.fH, fun b hb => ?_, fun b hb => ?_, hE1.ck⟩
    · rcases List.mem_cons.mp hb with rfl | hb
      · exact hFB
      · exact hE1.fbs b hb
    · rcases List.mem_cons.mp hb with rfl | hb
      · have := hE.fH.2.2.2.1
        show H.toNat + 248 ≤ B.toNat
        omega
      · exact hE.abv b hb
  · intro s st v hL hsh
    obtain ⟨B, rfl⟩ := val_of_shapeEq_one' hsh
    exact ⟨B, rfl, Trie.lv_new (s := { st with locals := s.locals }) hL hx _⟩
  · intro v
    by_cases hw : ∃ B : BitVec 64, v = Wv B
    swap
    · exact hoareG_false fun s _ h => hw (by obtain ⟨B, hB, -⟩ := h.1; exact ⟨B, hB⟩)
    obtain ⟨B, rfl⟩ := hw
    exact hoareG_pre (hk B) fun s _ ⟨⟨B', hB', hL⟩, Γ, q, he, hh, hE⟩ => by
      simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hB'
      subst hB'
      exact ⟨hL, Γ, q, he, hh, hE _ rfl⟩

/-- `memzero(x, n)` of a block of the list (or the header). -/
theorem ph_memzero {Rv : Gam → Ptrs → Mem → LocalsH → ValueHOL 64 → Prop} {kv : List (MlS × ValueHOL 64)} {x : MlS}
    {PL C H B : BitVec 64} {bs : List (BitVec 64 × Nat)} {ck : Mem → Prop} {n : Nat} (hn : n < 2 ^ 60) (hx : (x, Wv B) ∈ kv)
    (hfb : ∀ Γ q m g, EA a.p0 PL C H bs ck Γ q m g → Trie.FBlk a.p0 B n Γ q)
    (hck : ∀ (s st : State σ) (Γ : Gam) (q : Ptrs), Heap a Γ q s → EA a.p0 PL C H bs ck Γ q s.memory s.globals →
      Trie.Mod a Helpers.sigMemzero [] [Wv B, Wv (BitVec.ofNat 64 n)] Γ q s st → ck st.memory) :
    HoareG σ guestCtx (PJ a (Trie.LV kv) (EA a.p0 PL C H bs ck)) (callD (nm "memzero") [lv x, cw n])
      (PP a (Trie.LV kv) (EA a.p0 PL C H bs ck) Rv) := by
  have hZ : 1 * (BitVec.ofNat 64 n).toNat + 0 = n := by
    rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)]; omega
  have hMz : CSumm σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "memzero") Helpers.sigMemzero [] :=
    ctab% Rec.tab26_guestR
  refine pp_call ha (Trie.sa_cast hCb haH hMz) (funSpec_true _) (by simp [Helpers.sigMemzero])
    (fun h => by simp [Helpers.sigMemzero] at h) ?_ ?_
  · intro s Γ q _ hL hh hE vs hvs
    rw [evs_cons (Trie.lv_ev hL hx) (evs_cons (ev_cw s n) evs_nil)] at hvs
    cases hvs
    obtain ⟨hb1, hb2⟩ := Trie.fblk_sub (hfb _ _ _ _ hE) (off := 0) (n := n) (by omega) (by omega)
    refine ⟨Mod.argsOK_mz (by rw [hZ, hCb]; exact hb1), fun y hy => Or.inr (Or.inr (Or.inl ?_)), fun _ => trivial⟩
    have hov := Mod.argCells_mz hy
    rw [hZ] at hov
    exact (hb2 y hov).2.1
  · intro s st vs callee v Γ Γ' q q' _ hL hvs hE hLc hQ hh hext hh' hmo hnf hnfp hmd
    rw [evs_cons (Trie.lv_ev hL hx) (evs_cons (ev_cw s n) evs_nil)] at hvs
    cases hvs
    exact ea_step (heap_ord hh) (heap_ord hh') (Ra.layout_heap haC hh') hext (hnfp rfl) hmo
      (fun _ => hck s st Γ q hh hE hmd) hE

end body

end InitECandidate.Solver.MemSafe.Exb

#print axioms InitECandidate.Solver.MemSafe.Exb.ph_stH
#print axioms InitECandidate.Solver.MemSafe.Exb.ph_alloc
#print axioms InitECandidate.Solver.MemSafe.Exb.ph_memzero
