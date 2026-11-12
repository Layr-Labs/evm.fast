import InitECandidate.Solver.MemSafe.Rec.TxRecLst
import InitECandidate.Solver.MemSafe.Node.MzVal
import InitECandidate.Solver.MemSafe.Mod.Args

set_option autoImplicit false

/-!
# `decode_transaction_rlp`: the entry (length guard, `b0`, `alloc(400)`, `memzero`, raw stores, declarations)

`txr_entry`: from the located input `[P, P + N)` (`SlPre`) to `txrFirst`, which is a hypothesis `hFB`
(the first block: type dispatch and `rlp_decode_fully`).
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false

namespace InitECandidate.Solver.MemSafe.Rec
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.MptH
open InitECandidate.Solver.Spec.Mpt.Dec (SlPre FreshFoot SIn)

variable {σ : Type} {X : Ctx 64}

/-- the locals when `txrFirst` starts -/
def txrLp (Ar P N B0 : BitVec 64) (m : LocalsH) : Prop :=
  LV [(nm "nfields", Wd (BitVec.ofNat 64 9)), (nm "t", Wd (BitVec.ofNat 64 0)),
    (nm "top", wv [BitVec.ofNat 64 0, BitVec.ofNat 64 0, BitVec.ofNat 64 0, BitVec.ofNat 64 0]),
    (nm "tx", Wd Ar), (nm "b0", Wd B0), (nm "p", Wd P), (nm "len", Wd N)] m

def txrKF (K : BitVec 64) : Prop := K.toNat % 8 = 0 ∧ heapBase ≤ K.toNat ∧ K.toNat + 400 ≤ heapEnd

macro "txrne" : tactic => `(tactic| (simp only [List.forall_mem_cons, List.not_mem_nil,
  List.forall_mem_nil, IsEmpty.forall_iff, implies_true, and_true]; decide))

theorem hoareG_exEP {a : Act σ} {Ar : BitVec 64} {n : Nat} {L : LocalsH → Prop} {P : Prop}
    {E : Gam → Ptrs → Mem → LocalsH → Prop} {c : ProgHOL 64}
    {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (h : P → HoareG σ X (DI a Ar n L E) c Q) :
    HoareG σ X (DI a Ar n L (withP P E)) c Q :=
  fun s hs ⟨hl, Γ, q, he, hh, hB, hn, hE, hP⟩ hg => h hP s hs ⟨hl, Γ, q, he, hh, hB, hn, hE⟩ hg

theorem txr_entry {a : Act σ} (ha : ActOK a X) (hcs : TxCS X a) {P N : BitVec 64}
    (hPN : heapBase ≤ P.toNat ∧ P.toNat + N.toNat ≤ a.p0.hp) {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop}
    (hFB : ∀ Ar B0 : BitVec 64, Ar.toNat % 8 = 0 → heapBase ≤ Ar.toNat → Ar.toNat + 400 ≤ heapEnd →
      N.toNat ≠ 0 → HoareG σ X (DI a Ar 400 (txrLp Ar P N B0) (EZ Ar)) txrFirst (NQM a Rv)) :
    HoareG σ X (DI a 0 0 (LV [(nm "p", Wd P), (nm "len", Wd N)]) (fun _ _ _ _ => True)) txrBody
      (NQM a Rv) := by
  unfold txrBody
  refine hoareG_seqDIM (hoareG_guardDL ha.hH
    (L' := fun m => LV [(nm "p", Wd P), (nm "len", Wd N)] m ∧ N.toNat ≠ 0) ?_) ?_
  · intro s hs hL hc
    refine ⟨hL, fun h0 => ?_⟩
    rw [ev_cmp (ev_lw (hL (nm "len", Wd N) (by simp))) (ev_cw _ 0)] at hc
    have hN : N = BitVec.ofNat 64 0 := BitVec.eq_of_toNat_eq (by simpa using h0)
    subst hN
    simp [Flapjack.Compiler.Encoders.Asm.wordCmpHOL] at hc
  refine hoareG_exP (fun hN0 => ?_)
  refine hoareG_decDIM ha.hH
    (L' := fun m => ∃ B0 : BitVec 64, LV [(nm "b0", Wd B0), (nm "p", Wd P), (nm "len", Wd N)] m) ?_ ?_
  · intro s hs hL v hv
    obtain ⟨w, rfl, -⟩ := ev_loadByte_word hv
    exact ⟨w, lv_cons hL (by txrne) _⟩
  refine txrExL (fun B0 => ?_)
  have hSZ : (BitVec.ofNat 64 400).toNat = 400 := by norm_num
  refine hoareG_allocDI ha hcs.hAS hcs.alloc (SZ := BitVec.ofNat 64 400) (Ar2 := fun K => K)
    (n2 := fun _ => 400)
    (L' := fun K => LV [(nm "tx", Wd K), (nm "b0", Wd B0), (nm "p", Wd P), (nm "len", Wd N)])
    (E' := fun K => withP (txrKF K) (fun _ _ _ _ => True)) ?_ ?_ ?_ ?_
  · intro s hs hL
    exact ev_cw _ 400
  · intro s st K hL
    exact lv_cons (s := ({ st with locals := s.locals } : State σ)) hL (by txrne) _
  · intro s st K Γ Γ2 q q2 hs hL he hh hB hn hE ho
    refine ⟨by simpa [hSZ] using ho.blk, by simpa [hSZ] using ho.fresh0, trivial, ho.stat.2.2, ho.stat.1, ?_⟩
    have := ho.stat.2.1
    rw [hSZ] at this
    exact this
  · intro K
    refine hoareG_exEP (fun hKF => ?_)
    have hAr : K.toNat % 8 = 0 ∧ K.toNat + 400 ≤ heapEnd := ⟨hKF.1, hKF.2.2⟩
    have hz : HoareG σ X (DI a K 400 (LV [(nm "tx", Wd K), (nm "b0", Wd B0), (nm "p", Wd P), (nm "len", Wd N)])
        (fun _ _ _ _ => True)) (.call (some (none, none)) (nm "memzero") [lv (nm "tx"), cw 400])
        (DQ a K 400 (LV [(nm "tx", Wd K), (nm "b0", Wd B0), (nm "p", Wd P), (nm "len", Wd N)])
          (EZ K)) := by
      refine hoareG_callDIA ha hcs.mz (Node.funSpec_memzeroZ hcs.hC) (by simp [Helpers.sigMemzero])
        (by simp [Helpers.sigMemzero]) ?_ ?_
      · intro s hs hL Γ q he hh hB hn hE vs hvs
        rw [evs_cons (ev_lw (hL (nm "tx", Wd K) (by simp))) (evs_cons (ev_cw _ 400) evs_nil)] at hvs
        cases hvs
        refine ⟨Mod.argsOK_mz (bufOK_blk hB le_rfl (by simp [hSZ])), fun x hx => ?_⟩
        obtain ⟨o1, o2, o3⟩ := Mod.argCells_mz hx
        have o3' : x.toNat < K.toNat + 400 := by simpa [hSZ] using o3
        exact Or.inr (Or.inr (Or.inl (hn x ⟨o1, by omega, by omega⟩)))
      · intro s st vs callee v Γ Γ' q q' hs hL hvs hLc co hB hE
        rw [evs_cons (ev_lw (hL (nm "tx", Wd K) (by simp))) (evs_cons (ev_cw _ 400) evs_nil)] at hvs
        cases hvs
        have hm := hLc v rfl K (BitVec.ofNat 64 400) rfl hKF.1 (by rw [hSZ]) (by rw [hSZ]; norm_num)
        obtain ⟨hT, h27, h35⟩ := tf_zero (mem := st.memory) (Γ := Γ') hAr
          (fun j hj8 hj => hm j hj8 (by rw [hSZ]; exact hj))
        refine ⟨⟨hT, fun _ => h27, fun _ => h35⟩, ?_⟩
        unfold cl rd
        rw [hm (8 * 19) (by norm_num) (by rw [hSZ]; norm_num)]
    refine hoareG_seqDIM hz ?_
    have hLt : ∀ m, LV [(nm "tx", Wd K), (nm "b0", Wd B0), (nm "p", Wd P), (nm "len", Wd N)] m →
        m.lookup (nm "tx") = some (Wd K) := fun m hm => hm (nm "tx", Wd K) (by simp)
    refine hoareG_seqDIM (txr_stL2 ha hLt hAr (ez_store (Ar := K)) 384 1 (by norm_num) (by norm_num)
      (by decide) ?_) ?_
    · intro s hs hL v hv
      rw [ev_lw (hL (nm "p", Wd P) (by simp))] at hv
      cases hv; simp [flattenHOL]
    refine hoareG_seqDIM (txr_stL2 ha hLt hAr (ez_store (Ar := K)) 392 1 (by norm_num) (by norm_num)
      (by decide) ?_) ?_
    · intro s hs hL v hv
      rw [ev_lw (hL (nm "len", Wd N) (by simp))] at hv
      cases hv; simp [flattenHOL]
    refine hoareG_decDIM ha.hH (L' := LV [(nm "top", wv [BitVec.ofNat 64 0, BitVec.ofNat 64 0,
      BitVec.ofNat 64 0, BitVec.ofNat 64 0]), (nm "tx", Wd K), (nm "b0", Wd B0), (nm "p", Wd P),
      (nm "len", Wd N)]) ?_ ?_
    · intro s hs hL v hv
      obtain ⟨vs, rfl, hvs⟩ := ev_rstruct_inv hv
      rw [evs_cons (ev_cw _ 0) (evs_cons (ev_cw _ 0) (evs_cons (ev_cw _ 0) (evs_cons (ev_cw _ 0) evs_nil)))] at hvs
      cases hvs
      exact lv_cons hL (by txrne) _
    refine hoareG_decDIM ha.hH (L' := LV [(nm "t", Wd (BitVec.ofNat 64 0)), (nm "top", wv [BitVec.ofNat 64 0,
      BitVec.ofNat 64 0, BitVec.ofNat 64 0, BitVec.ofNat 64 0]), (nm "tx", Wd K), (nm "b0", Wd B0),
      (nm "p", Wd P), (nm "len", Wd N)]) ?_ ?_
    · intro s hs hL v hv
      rw [ev_cw] at hv
      cases hv
      exact lv_cons hL (by txrne) _
    refine hoareG_decDIM ha.hH (L' := txrLp K P N B0) ?_ ?_
    · intro s hs hL v hv
      rw [ev_cw] at hv
      cases hv
      exact lv_cons hL (by txrne) _
    exact hFB K B0 hKF.1 hKF.2.1 hKF.2.2 hN0

end InitECandidate.Solver.MemSafe.Rec
