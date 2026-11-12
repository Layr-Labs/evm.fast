import InitECandidate.Solver.MemSafe.Trie.MnkFresh
import InitECandidate.Solver.Band4.MRecFr
import InitECandidate.Solver.MemSafe.Ins.DelNodeFn
import InitECandidate.Solver.MemSafe.Ins.InsBody
import InitECandidate.Solver.MemSafe.Dn.KitA
import InitECandidate.Solver.MemSafe.Dn.StepAd

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# `mpt_set`: the call to `mpt_nibble_key` with the adoption of its nibble buffer
-/

namespace InitECandidate.Solver.MemSafe.Trie
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn
open InitECandidate.Solver.Band4 (RootOK rootOK_ext newFresh_out mnkIn_of_G ret_mpt_nibble_key MnkIn MnkRet)

variable {σ : Type}

/-- The root cell of a handle: `Fits nodeU` (a null-range nonzero value aborts at the first load). -/
abbrev RF (Γ : Gam) (v : BitVec 64) : Prop := Fits Γ Types.nodeU v

/-- **The handle record** `m`: an aligned heap block `[m, m+16)` outside every `Γ` object whose root
cell fits `nodeU`. -/
def MRecF (Γ : Gam) (s : State σ) (m : BitVec 64) : Prop :=
  ∃ p : Ptrs, ptrsOf s = some p ∧ m.toNat % 8 = 0 ∧ heapBase ≤ m.toNat ∧ m.toNat + 16 ≤ p.hp ∧
    ¬ InObj Γ m.toNat ∧ ¬ InObj Γ (m.toNat + 8) ∧ RF Γ (rd s.memory m)

/-- The handle record's facts at exit allocator `p`: an aligned heap block below `p.hp`, outside `Γ`,
whose root cell fits `nodeU`. -/
def HRec (Γ : Gam) (p : Ptrs) (mm : Mem) (M : BitVec 64) : Prop :=
  M.toNat % 8 = 0 ∧ heapBase ≤ M.toNat ∧ M.toNat + 16 ≤ p.hp ∧ ¬ InObj Γ M.toNat ∧
    ¬ InObj Γ (M.toNat + 8) ∧ RF Γ (rd mm M)

/-- The handle record, and its cells were unallocated at the allocator `p0`. -/
def HRecU (p0 : Ptrs) (Γ : Gam) (p : Ptrs) (mm : Mem) (M : BitVec 64) : Prop :=
  HRec Γ p mm M ∧ ∀ c : BitVec 64, Overlap M.toNat 16 c → ¬ p0.Allocated c.toNat

theorem mrecF_of_hRec {Γ : Gam} {p : Ptrs} {t : State σ} {M : BitVec 64} (hp : ptrsOf t = some p)
    (h : HRec Γ p t.memory M) : MRecF Γ t M := ⟨p, hp, h⟩

/-- The handle record `[M, M + 16)`: aligned heap block below `hp`, outside every `Γ` object. -/
def EH (M : BitVec 64) (Γ : Gam) (q : Ptrs) : Prop :=
  M.toNat % 8 = 0 ∧ heapBase ≤ M.toNat ∧ M.toNat + 16 ≤ q.hp ∧ ¬ InObj Γ M.toNat ∧
    ¬ InObj Γ (M.toNat + 8)

theorem newFresh_outN {Γ Γ' : Gam} {p p' : Ptrs} (hN : NewFresh Γ Γ' p p') (hord : p.Ordered)
    (hord' : p'.Ordered) {a : Nat} (ha2 : a < p.hp) (hpE : p.hp ≤ heapEnd) (hno : ¬ InObj Γ a) :
    ¬ InObj Γ' a := by
  have hE : heapEnd < 2 ^ 64 := by decide
  have e : (BitVec.ofNat 64 a).toNat = a := by
    rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)]
  rintro ⟨o, ho, h1, h2⟩
  rcases hN o ho (BitVec.ofNat 64 a) (by rw [e]; exact h1) (by rw [e]; exact h2) with
    ⟨o0, ho0, -, -, h3, h4⟩ | hf
  · rw [e] at h3 h4
    exact hno ⟨o0, ho0, h3, h4⟩
  · obtain ⟨-, -, hfp', hfs', -, -, -, -⟩ := hord'
    obtain ⟨-, -, hfp, -, -, -, -, -⟩ := hord
    unfold Fresh at hf
    rw [e] at hf
    rcases hf with ⟨h, -⟩ | ⟨h, -⟩ | ⟨h, -⟩ <;> omega

theorem eh_ext {M : BitVec 64} {Γ Γ' : Gam} {q q' : Ptrs} (h : EH M Γ q) (hN : NewFresh Γ Γ' q q')
    (hord : q.Ordered) (hord' : q'.Ordered) (hm : q.Mono q') : EH M Γ' q' := by
  obtain ⟨h1, h2, h3, h4, h5⟩ := h
  have hE := hord.2.1
  refine ⟨h1, h2, by have := hm.1; omega, newFresh_outN hN hord hord' (by omega) hE h4, ?_⟩
  exact newFresh_outN hN hord hord' (by omega) hE h5

/-- Adopting a block at or above `q.hp` keeps the handle outside `Γ`. -/
theorem eh_adopt {M out : BitVec 64} {len : Nat} {Γ' Γ'' : Gam} {q q' : Ptrs} (h : EH M Γ' q')
    (hq : EH M Γ' q') (hnew : ∀ o ∈ Γ'', o ∈ Γ' ∨ ∃ r, r < 8 ∧ o.ty = Types.tNIB r ∧
      out.toNat ≤ o.lo ∧ o.hi ≤ out.toNat + 8 * nw len) (hge : 0 < len → q.hp ≤ out.toNat)
    (hpos : ∀ o ∈ Γ'', 0 < o.size) (hqq : q.hp ≤ q'.hp) (hMq : M.toNat + 16 ≤ q.hp) : EH M Γ'' q' := by
  obtain ⟨h1, h2, h3, h4, h5⟩ := h
  refine ⟨h1, h2, h3, ?_, ?_⟩ <;>
  · rintro ⟨o, ho, ho1, ho2⟩
    rcases hnew o ho with h | ⟨r, hr, ht, hlo, hhi⟩
    · first | exact h4 ⟨o, h, ho1, ho2⟩ | exact h5 ⟨o, h, ho1, ho2⟩
    · have hp := hpos o ho
      unfold Obj.lo at ho1 hlo
      unfold Obj.hi at ho2 hhi
      unfold nw at hhi
      have hlen : 0 < len := by omega
      have := hge hlen
      omega

def MnkFreshR (vs : List (ValueHOL 64)) (s : State σ) (r : PanSemResultExact 64) (t : State σ) : Prop :=
  Good (some r) → ∀ v, r = .returned v →
      ∀ (M K KL ks kp hsc : BitVec 64) (p : Ptrs), vs = [.val (.word M), .val (.word K), .val (.word KL)] →
        ptrsOf s = some p → p.Ordered → 2 * KL.toNat < 2 ^ 64 → Mpt.Leaves.KOK s ks kp →
        gword s (nm "mpt_hash_scratch") = some hsc → hsc.toNat + 32 < 2 ^ 64 →
        ∃ nb L : BitVec 64, ∃ p' : Ptrs, v = .rStruct [.val (.word nb), .val (.word L)] ∧
          ptrsOf t = some p' ∧ MnkBlk p p' KL nb L

def MnkBandR (vs : List (ValueHOL 64)) (s : State σ) (r : PanSemResultExact 64) (t : State σ) : Prop :=
  ∀ M K KL : BitVec 64, vs = [.val (.word M), .val (.word K), .val (.word KL)] → MnkIn s KL →
    ∀ v, r = .returned v → MnkRet s t M KL v

theorem mnk_fresh' : FunSpec σ guestCtx (nm "mpt_nibble_key") (MnkFreshR (σ := σ)) :=
  mnk_fresh guestCtx_code Helpers.alignedDom_guestCtx Mpt.Leaves.domTop_guestCtx
    SourceCost.guestCtx_bounded

/-- **The post of the `mpt_nibble_key` call**, after adopting its nibble buffer. -/
theorem mnk_post {a : Act σ} (ha : ActOK a guestCtx) (haC : a.C = Types.guestC)
    (hCb : a.Cb = Types.guestC) (haH : a.H = Hooks.guestHooksR (σ := σ)) (hgr : a.sg.grows = true)
    {vs : List (ValueHOL 64)} {Γ Γ' : Gam} {q q' : Ptrs} {s st : State σ} {r : PanSemResultExact 64}
    {callee : HolFiniteMapExact MlS (ValueHOL 64)}
    (co : CO a MptH.mnkSig vs Γ Γ' q q' s st r) {M K KL : BitVec 64}
    (hvs : vs = [.val (.word M), .val (.word K), .val (.word KL)]) (hKL : 2 * KL.toNat < 2 ^ 64)
    (hEH : EH M Γ q) (hroot : RF Γ (rd s.memory M))
    (hLc : MnkBandR vs (callEntryStateHOLFinite s callee) r st ∧
      MnkFreshR vs (callEntryStateHOLFinite s callee) r st) {v : ValueHOL 64} (hr : r = .returned v) :
    ∃ Γ'' : Gam, Ext Γ' Γ'' ∧ Heap a Γ'' q' st ∧ ScrOld Γ' Γ'' ∧ EH M Γ'' q' ∧
      RF Γ'' (rd st.memory M) ∧ ∃ nb cnt : BitVec 64, v = .rStruct [.val (.word nb), .val (.word cnt)] ∧
        Hooks.NIn Γ'' nb cnt := by
  subst hr
  have hord := heap_ord co.heap0
  have hord' := heap_ord co.heap
  have hGe : G a.Cb a.H Γ (callEntryStateHOLFinite s callee) := by
    have := G_congr (s := s) (t := callEntryStateHOLFinite s callee) ha.hH rfl rfl rfl rfl co.heap0.1
    rw [ha.hupg] at this
    exact G_of_upg ha.hcaps this
  rw [hCb, haH] at hGe
  have hin := mnkIn_of_G hGe hKL
  have hpe : ptrsOf (callEntryStateHOLFinite s callee) = some q := co.heap0.2.1
  obtain ⟨-, -, ⟨ks, kp, hK⟩, hsc, hsw, hs32⟩ := hin
  obtain ⟨hband, hfresh⟩ := hLc
  obtain ⟨nb, L, hv0, hbe, hnb8, hnbase, hnbL, hsec1, hsec2, hnib⟩ :=
    hband M K KL hvs ⟨⟨q, hpe, hord⟩, hKL, ⟨ks, kp, hK⟩, hsc, hsw, hs32⟩ v rfl
  obtain ⟨nb', L', p', hv', hp', hblk⟩ := hfresh (by simp [Good]) v rfl M K KL ks kp hsc q hvs hpe hord hKL
    hK hsw hs32
  rw [hv0] at hv'
  simp only [ValueHOL.rStruct.injEq, List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq,
    and_true] at hv'
  obtain ⟨rfl, rfl⟩ := hv'
  have hqq : p' = q' := by
    have := co.heap.2.1
    rw [hp'] at this
    exact Option.some.inj this
  subst hqq
  obtain ⟨-, -, hb8, hbb, hbq, hbfr, hbL⟩ := hblk
  have hLeven : L.toNat % 2 = 0 := by rcases hbL with h | h <;> omega
  have hN : (BitVec.ofNat 64 (L.toNat / 2)).toNat = L.toNat / 2 := by
    rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by have := L.isLt; omega)]
  have hbyte' : ∀ j, j < L.toNat → Hooks.byteAt st.memory st.be (nb + BitVec.ofNat 64 j) < 16 := by
    intro j hj
    have h := hnib j hj
    show Spec.Mpt.byteOf st.memory st.be _ < 16
    rw [hbe]
    exact h
  obtain ⟨Γ'', hx, hh2, hsc2, hN', hnew, hge⟩ := ctn_adopt ha haC (haH) hgr co (by rfl) hb8 hbb
    (N := BitVec.ofNat 64 (L.toNat / 2)) (by rw [hN]; omega)
    (fun x h1 h2 => hbfr x h1 (by rw [hN] at h2; omega)) (by rw [hN]; omega) hbyte'
  obtain ⟨p1, hp1, hord1, hL1, -⟩ := co.heap0.1
  have hEH' : EH M Γ' p' := eh_ext hEH co.nf hord hord' co.mono
  obtain ⟨p2, hp2, hord2, hL2, -⟩ := hh2.1
  have hpos : ∀ o ∈ Γ'', 0 < o.size := fun o ho => (hL2.1 o ho).2.2.1
  have hEH'' : EH M Γ'' p' := eh_adopt hEH' hEH' hnew hge hpos co.mono.1 hEH.2.2.1
  have hnw : ¬ WCell a.Cb Γ M := by
    rintro ⟨o, ho, k, hk, -, he⟩
    apply hEH.2.2.2.1
    have := cell_in (C := a.C) hord1 hL1 ho hk
    rw [← he] at this
    exact this
  have hk : st.memory M = s.memory M := co.frame M hnw (by
    unfold Ptrs.Allocated; left; exact ⟨hEH.2.1, by have := hEH.2.2.1; omega⟩)
  have hroot' : RF Γ'' (rd st.memory M) := by
    unfold rd; rw [hk]
    exact fits_ext hx (fits_ext co.ext hroot)
  exact ⟨Γ'', hx, hh2, hsc2, hEH'', hroot', nb, L, hv0, hN'⟩

end InitECandidate.Solver.MemSafe.Trie
