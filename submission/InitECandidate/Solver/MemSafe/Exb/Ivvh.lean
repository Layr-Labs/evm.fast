import InitECandidate.Solver.MemSafe.Exb.IvvhCode
import InitECandidate.Solver.MemSafe.Exb.HKit
import InitECandidate.Solver.MemSafe.Rec.TxDec
import InitECandidate.Solver.MemSafe.Rec.DecPayEP
import InitECandidate.Solver.MemSafe.Ra.Win
import InitECandidate.Solver.MemSafe.Aw.Loop

/-!
# `is_valid_versioned_hashes`: the summary

`sumSpecA_is_valid_versioned_hashes`: signature `[any]` (grows: each `decode_transaction` adds its record), `PW = False`.
`Pre` (`IvPre`) asks that the payload's slice array `A` (`rd (rd (si) + 32)`, count `rd (rd (si) + 40)`) is a `tSLA` object and that every slice
lies in a `tVAL` object (`SlObj`): the fact package F1a adds to the `tPL` hook. That gives `decode_transaction`'s `SlPre` at each iteration. The
array cells are `prot`, so they survive the calls (`ivE_call`); everything else the body reads is passed to `any` parameters.
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
open InitECandidate.Solver.Spec.Mpt.Dec (SlPre)

variable {σ : Type}

/-- The slice lies in a `tVAL` object (also when empty). -/
def SlObj (Γ : Gam) (p l : BitVec 64) : Prop :=
  ∃ x ∈ Γ, x.ty = Types.tVAL ∧ x.lo ≤ p.toNat ∧ p.toNat + l.toNat ≤ x.hi

theorem slObj_ext {Γ Γ' : Gam} (he : Ext Γ Γ') {p l : BitVec 64} (h : SlObj Γ p l) : SlObj Γ' p l := by
  obtain ⟨x, hx, ht, h1, h2⟩ := h
  obtain ⟨x', hx', hb, ht', hs⟩ := he x hx
  refine ⟨x', hx', ht'.trans ht, ?_, ?_⟩
  · unfold Obj.lo at h1 ⊢; rw [hb]; exact h1
  · unfold Obj.hi at h2 ⊢; rw [hb]; omega

/-- The slice array and its slices. -/
def IvE (A N : BitVec 64) (Γ : Gam) (m : Mem) : Prop :=
  SlaObj Γ A N ∧ ∀ i, i < N.toNat → SlObj Γ (Hooks.slP m A i) (Hooks.slL m A i)

theorem ivE_call {a : Act σ} (hCb : a.Cb = Types.guestC) (hC : a.C = Types.guestC) {sg' : Sig} {Γ Γ' : Gam}
    {q q' : Ptrs} {s st : State σ} (co : COut a sg' Γ Γ' q q' s st) {A N : BitVec 64}
    (h : IvE A N Γ s.memory) : IvE A N Γ' st.memory := by
  obtain ⟨h1, h2⟩ := h
  refine ⟨slaObj_ext co.ext h1, fun i hi => ?_⟩
  have e1 := sla_cell_frame hCb hC co h1 hi (d := 0) (by omega)
  rw [Nat.add_zero] at e1
  have e2 := sla_cell_frame hCb hC co h1 hi (d := 8) (by omega)
  have hS := slObj_ext co.ext (h2 i hi)
  unfold Hooks.slP Hooks.slL at hS ⊢
  rw [Hooks.rd_congr e1, Hooks.rd_congr e2]
  exact hS

theorem ivMul16 (I : BitVec 64) : I * 16#64 = BitVec.ofNat 64 (16 * I.toNat) := by
  apply BitVec.eq_of_toNat_eq
  simp only [BitVec.toNat_mul, BitVec.toNat_ofNat]
  omega

theorem ivMul168 (I : BitVec 64) : I * 16#64 + 8#64 = BitVec.ofNat 64 (16 * I.toNat + 8) := by
  apply BitVec.eq_of_toNat_eq
  simp only [BitVec.toNat_add, BitVec.toNat_mul, BitVec.toNat_ofNat]
  omega

def ivKvA (A N : BitVec 64) : List (MlS × ValueHOL 64) :=
  [(nm "ntx", .val (.word N)), (nm "txs", .val (.word A))]

def ivKvI (I A N : BitVec 64) : List (MlS × ValueHOL 64) := (nm "i", .val (.word I)) :: ivKvA A N

def ivL (A N : BitVec 64) (m : LocalsH) : Prop :=
  ∃ I : BitVec 64, I.toNat ≤ N.toNat ∧ I.toNat < 2 ^ 63 ∧ Trie.LV (ivKvI I A N) m

theorem ivFresh_of {kv : List (MlS × ValueHOL 64)} {x : MlS} (h : ∀ y ∈ kv.map Prod.fst, y ≠ x) :
    ∀ p ∈ kv, p.1 ≠ x :=
  fun p hp => h p.1 (List.mem_map.mpr ⟨p, hp, rfl⟩)

macro "iv_fresh" : tactic =>
  `(tactic| (apply ivFresh_of; simp only [ivKvI, ivKvA, List.map_cons, List.map_nil]; decide))

theorem iv_load {s : State σ} {kv : List (MlS × ValueHOL 64)} {x : MlS} {X : BitVec 64} {c : Nat}
    {v : ValueHOL 64} (hL : Trie.LV kv s.locals) (hm : (x, ValueHOL.val (.word X)) ∈ kv)
    (h : ev s (.load .one (.op .add [lv x, cw c])) = some v) :
    v = .val (.word (rd s.memory (X + BitVec.ofNat 64 c))) := by
  obtain ⟨w, hw, -, rfl⟩ := Struct.ev_load1_inv h
  rw [ev_add2 (Trie.lv_ev hL hm) (ev_cw s c)] at hw
  cases hw
  rfl

theorem memeq_C :
    CSumm σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "memeq") ⟨[.any, .any, .any], [], [], false⟩ [] :=
  ctab% Rec.tab26_guestR

theorem txIsBlob_C :
    CSumm σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "tx_is_blob") ⟨[.any], [], [], false⟩ [] :=
  ctab% Rec.tab26_guestR

/-- `decode_transaction`'s `Pre` at index `I`. -/
theorem iv_slpre {a : Act σ} (haC : a.C = Types.guestC) {I A N : BitVec 64} {s : State σ} {Γ : Gam} {q : Ptrs}
    (hL : Trie.LV (ivKvI I A N) s.locals) (hh : Heap a Γ q s) (hE : IvE A N Γ s.memory)
    (hI : I.toNat < N.toNat) {vs : List (ValueHOL 64)}
    (hvs : evs s [.load .one ivEl, .load .one ivEl8] = some vs)
    (callee : HolFiniteMapExact MlS (ValueHOL 64)) : SlPre vs (callEntryStateHOLFinite s callee) := by
  obtain ⟨v1, vs1, rfl, h1, hvs1⟩ := evs_cons_inv hvs
  obtain ⟨v2, vs2, rfl, h2, hvs2⟩ := evs_cons_inv hvs1
  rw [evs_nil] at hvs2
  cases hvs2
  have eI := Trie.lv_ev hL (x := nm "i") (v := .val (.word I)) (by simp [ivKvI])
  have eA := Trie.lv_ev hL (x := nm "txs") (v := .val (.word A)) (by simp [ivKvI, ivKvA])
  have e1 : ev s ivEl = some (.val (.word (A + I * 16#64))) := ev_add2 eA (ev_mul2 eI (ev_cw s 16))
  have e2 : ev s ivEl8 = some (.val (.word (A + (I * 16#64 + 8#64)))) :=
    ev_add3 eA (ev_mul2 eI (ev_cw s 16)) (ev_cw s 8)
  obtain ⟨w1, hw1, -, rfl⟩ := Struct.ev_load1_inv h1
  obtain ⟨w2, hw2, -, rfl⟩ := Struct.ev_load1_inv h2
  rw [e1] at hw1
  cases hw1
  rw [e2] at hw2
  cases hw2
  obtain ⟨x, hx, ht, hlo, hhi⟩ := hE.2 I.toNat hI
  unfold Hooks.slP at hlo hhi
  unfold Hooks.slL at hhi
  rw [← ivMul16 I] at hlo hhi
  rw [← ivMul168 I] at hhi
  have hlv := ((Ra.layout_heap haC hh).1 x hx).2.2.2.2
  rw [ht, show (Types.guestC.ty Types.tVAL).region = .heap from rfl] at hlv
  simp only [Region.Live] at hlv
  simp only [Obj.hi, Obj.lo] at hlo hhi hlv
  refine ⟨_, _, rfl, ?_, q, hh.2.1, ?_⟩ <;> omega

section body
variable {a : Act σ} (ha : ActOK a guestCtx) (haC : a.C = Types.guestC) (hCb : a.Cb = Types.guestC)
  (haH : a.H = Hooks.guestHooksR (σ := σ)) (hgr : a.sg.grows = true)
include ha haC hCb haH

theorem iv_inner {I A N : BitVec 64} :
    HoareG σ guestCtx (HJ a (Trie.LV (ivKvI I A N)) (fun Γ _ m => IvE A N Γ m)) ivInner
      (HP a (Trie.LV (ivKvI I A N)) (fun Γ _ m => IvE A N Γ m) fun _ _ _ _ => True) := by
  have hM : SumSpecA σ guestCtx a.Cb a.H (nm "memeq") ⟨[.any, .any, .any], [], [], false⟩
      (fun _ _ _ => True) (fun _ _ _ _ => False) (fun _ _ _ _ _ _ => True) := by
    rw [hCb, haH]; exact sumA_of_csumm memeq_C
  unfold ivInner
  refine hp_seq (hp_iteRet0 ha.hH) ?_
  refine hp_decCall ha hM (by simp) rfl (by simp) (fun h => by simp at h)
    (L1 := Trie.LV (ivKvI I A N)) (L2 := Trie.LV (ivKvI I A N)) (E1 := fun Γ _ m => IvE A N Γ m)
    (fun _ _ _ _ _ _ _ _ _ _ => trivial)
    (fun s st Γ Γ' q q' _ _ hE co => ivE_call hCb haC co hE)
    (fun s st v hL => Trie.lv_set (s := { st with locals := s.locals }) hL (by iv_fresh) v)
    ?_ (fun m0 m _ h => Trie.lv_res h (by iv_fresh) _)
  exact hp_seq (hp_iteRet0 ha.hH)
    (hp_seq (hp_assign ha.hH fun s _ hL v _ => Trie.lv_set hL (by iv_fresh) v)
      (hp_assign ha.hH fun s _ hL v _ => Trie.lv_set hL (by iv_fresh) v))

theorem iv_blob {I A N : BitVec 64} :
    HoareG σ guestCtx (HJ a (Trie.LV (ivKvI I A N)) (fun Γ _ m => IvE A N Γ m)) ivBlob
      (HP a (Trie.LV (ivKvI I A N)) (fun Γ _ m => IvE A N Γ m) fun _ _ _ _ => True) := by
  unfold ivBlob
  refine hp_decM ha.hH (L1 := Trie.LV (ivKvI I A N)) (L2 := Trie.LV (ivKvI I A N))
    (fun s Γ q _ hL _ v _ => Trie.lv_set hL (by iv_fresh) v) ?_ (fun m0 m _ h => Trie.lv_res h (by iv_fresh) _)
  refine hp_decM ha.hH (L1 := Trie.LV (ivKvI I A N)) (L2 := Trie.LV (ivKvI I A N))
    (fun s Γ q _ hL _ v _ => Trie.lv_set hL (by iv_fresh) v) ?_ (fun m0 m _ h => Trie.lv_res h (by iv_fresh) _)
  exact hp_while ha.hH (hoareG_pre (iv_inner ha haC hCb haH) fun _ _ h => h.1) (fun _ _ h _ => h)

include hgr in
theorem iv_outer {I A N : BitVec 64} (hI : I.toNat < N.toNat) (hN : N.toNat < 2 ^ 63) :
    HoareG σ guestCtx (HJ a (Trie.LV (ivKvI I A N)) (fun Γ _ m => IvE A N Γ m)) ivOuter
      (HP a (ivL A N) (fun Γ _ m => IvE A N Γ m) fun _ _ _ _ => True) := by
  have hD : SumSpecA σ guestCtx a.Cb a.H (nm "decode_transaction") txSig (fun vs s _ => SlPre vs s)
      (fun _ _ _ _ => False) (fun _ _ _ _ _ _ => True) := by
    rw [hCb, haH]
    exact sumSpecA_mono sumSpecA_decode_transaction (fun _ _ _ h => h) (fun _ _ _ _ h => h)
      (fun _ _ _ _ _ _ _ => trivial)
  have hB : SumSpecA σ guestCtx a.Cb a.H (nm "tx_is_blob") ⟨[.any], [], [], false⟩
      (fun _ _ _ => True) (fun _ _ _ _ => False) (fun _ _ _ _ _ _ => True) := by
    rw [hCb, haH]; exact sumA_of_csumm txIsBlob_C
  have hres : ∀ {x : MlS} (hx : ∀ I' : BitVec 64, ∀ p ∈ ivKvI I' A N, p.1 ≠ x) (m0 m : LocalsH),
      Trie.LV (ivKvI I A N) m0 → ivL A N m → ivL A N (m.resVarEq (x, m0.lookup x)) := by
    rintro x hx m0 m - ⟨I', h1, h2, h3⟩
    exact ⟨I', h1, h2, Trie.lv_res h3 (hx I') _⟩
  unfold ivOuter
  refine hp_decCall ha hD (by simp [txSig]) rfl (by simp [txSig]) (fun _ => hgr)
    (L1 := Trie.LV (ivKvI I A N)) (L2 := ivL A N) (E1 := fun Γ _ m => IvE A N Γ m)
    (fun s Γ q _ hL hh hE vs hvs callee => iv_slpre haC hL hh hE hI hvs callee)
    (fun s st Γ Γ' q q' _ _ hE co => ivE_call hCb haC co hE)
    (fun s st v hL => Trie.lv_set (s := { st with locals := s.locals }) hL (by iv_fresh) v)
    ?_ (hres fun I' => by iv_fresh)
  refine hp_decCall ha hB (by simp) rfl (by simp) (fun h => by simp at h)
    (L1 := Trie.LV (ivKvI I A N)) (L2 := ivL A N) (E1 := fun Γ _ m => IvE A N Γ m)
    (fun _ _ _ _ _ _ _ _ _ _ => trivial)
    (fun s st Γ Γ' q q' _ _ hE co => ivE_call hCb haC co hE)
    (fun s st v hL => Trie.lv_set (s := { st with locals := s.locals }) hL (by iv_fresh) v)
    ?_ (hres fun I' => by iv_fresh)
  refine hp_seq (L := Trie.LV (ivKvI I A N)) (E := fun Γ _ m => IvE A N Γ m)
    (hoareG_ite (hoareG_pre (iv_blob ha haC hCb haH) fun _ _ h => h.1) (hp_skip fun _ h => h.1)) ?_
  have e : (I + BitVec.ofNat 64 1).toNat = I.toNat + 1 := by
    rw [BitVec.toNat_add, BitVec.toNat_ofNat]; omega
  refine hp_assign ha.hH fun s _ hL v hv => ⟨I + BitVec.ofNat 64 1, by omega, by omega, ?_⟩
  rw [ev_add2 (Trie.lv_ev hL (x := nm "i") (v := .val (.word I)) (by simp [ivKvI])) (ev_cw s 1)] at hv
  cases hv
  exact Trie.lv_new (Trie.lv_mono hL fun p hp => List.mem_cons_of_mem _ hp) (by iv_fresh) _

include hgr in
theorem iv_loop {A N : BitVec 64} :
    HoareG σ guestCtx (HJ a (ivL A N) (fun Γ _ m => IvE A N Γ m)) ivLoop
      (HP a (fun _ => True) (fun Γ _ m => IvE A N Γ m) fun _ _ _ _ => True) := by
  unfold ivLoop
  refine hp_while ha.hH ?_ (fun s _ h _ => ⟨trivial, h.2⟩)
  intro s hs ⟨⟨⟨I, hIN, hI63, hL⟩, Γ, q, he, hh, hE⟩, hc⟩ hg
  have hlt := Aw.less_lt (x := I) (y := N) hI63
    (cmp_true' (Trie.lv_ev hL (x := nm "i") (v := .val (.word I)) (by simp [ivKvI]))
      (Trie.lv_ev hL (x := nm "ntx") (v := .val (.word N)) (by simp [ivKvI, ivKvA])) hc)
  exact iv_outer ha haC hCb haH hgr hlt.2 hlt.1 s hs ⟨hL, Γ, q, he, hh, hE⟩ hg

include hgr in
/-- **The body**, from the entry: the first locals are read from the entry memory `M0`. -/
theorem iv_all {SI PL A N : BitVec 64} {M0 : Mem} (hPL : PL = rd M0 (SI + BitVec.ofNat 64 0))
    (hA : A = rd M0 (PL + BitVec.ofNat 64 32)) (hN : N = rd M0 (PL + BitVec.ofNat 64 40))
    {E2 : Gam → Ptrs → Mem → Prop} :
    HoareG σ guestCtx (HJ a (Trie.LV [(nm "si", .val (.word SI))]) (fun Γ _ m => m = M0 ∧ IvE A N Γ m)) ivBody
      (HP a (fun _ => False) E2 fun _ _ _ _ => True) := by
  unfold ivBody
  refine hp_decM ha.hH (L1 := Trie.LV [(nm "pl", .val (.word PL)), (nm "si", .val (.word SI))])
    (L2 := fun _ => False) ?_ ?_ (fun _ _ _ h => h.elim)
  · intro s Γ q _ hL hE v hv
    have h := iv_load hL (X := SI) (by simp) hv
    rw [hE.1, ← hPL] at h
    subst h
    exact Trie.lv_new hL (by iv_fresh) _
  refine hp_decM ha.hH
    (L1 := Trie.LV [(nm "txs", .val (.word A)), (nm "pl", .val (.word PL)), (nm "si", .val (.word SI))])
    (L2 := fun _ => False) ?_ ?_ (fun _ _ _ h => h.elim)
  · intro s Γ q _ hL hE v hv
    have h := iv_load hL (X := PL) (by simp) hv
    rw [hE.1, ← hA] at h
    subst h
    exact Trie.lv_new hL (by iv_fresh) _
  refine hp_decM ha.hH
    (L1 := Trie.LV [(nm "ntx", .val (.word N)), (nm "txs", .val (.word A)), (nm "pl", .val (.word PL)),
      (nm "si", .val (.word SI))])
    (L2 := fun _ => False) ?_ ?_ (fun _ _ _ h => h.elim)
  · intro s Γ q _ hL hE v hv
    have h := iv_load hL (X := PL) (by simp) hv
    rw [hE.1, ← hN] at h
    subst h
    exact Trie.lv_new hL (by iv_fresh) _
  iterate 3
    refine hp_decM ha.hH
      (L1 := Trie.LV [(nm "ntx", .val (.word N)), (nm "txs", .val (.word A)), (nm "pl", .val (.word PL)),
        (nm "si", .val (.word SI))])
      (L2 := fun _ => False) (fun s Γ q _ hL _ v _ => Trie.lv_set hL (by iv_fresh) v) ?_ (fun _ _ _ h => h.elim)
  refine hp_decM ha.hH (L1 := ivL A N) (L2 := fun _ => False) ?_ ?_ (fun _ _ _ h => h.elim)
  · intro s Γ q _ hL hE v hv
    rw [ev_cw] at hv
    cases hv
    refine ⟨BitVec.ofNat 64 0, by simp, by simp, Trie.lv_mono (Trie.lv_new hL (by iv_fresh) _) ?_⟩
    intro p hp
    simp only [ivKvI, ivKvA, List.mem_cons, List.not_mem_nil, or_false] at hp ⊢
    rcases hp with rfl | rfl | rfl <;> simp
  refine hoareG_pre (hp_seq (iv_loop ha haC hCb haH hgr) ?_)
    fun s _ ⟨hL, Γ, q, he, hh, hE⟩ => ⟨hL, Γ, q, he, hh, hE.2⟩
  unfold ivTail
  exact hp_seq (hp_iteRet0 ha.hH) (hp_ret ha.hH fun _ _ _ _ _ _ _ _ _ _ => trivial)

end body

def ivSig : Sig := ⟨[.any], [], [], true⟩

/-- `si`'s payload: its slice array is a `tSLA` object, every slice lies in a `tVAL` object. -/
def IvPre (vs : List (ValueHOL 64)) (s : State σ) (Γ : Gam) : Prop :=
  ∃ SI : BitVec 64, vs = [.val (.word SI)] ∧
    IvE (rd s.memory (rd s.memory (SI + BitVec.ofNat 64 0) + BitVec.ofNat 64 32))
      (rd s.memory (rd s.memory (SI + BitVec.ofNat 64 0) + BitVec.ofNat 64 40)) Γ s.memory

/-- **`is_valid_versioned_hashes`'s summary.** -/
theorem sumSpecA_is_valid_versioned_hashes :
    SumSpecA σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "is_valid_versioned_hashes") ivSig IvPre
      (fun _ _ _ _ => False) (fun _ _ _ _ _ _ => True) := by
  have hF := Rec.foldOK_guestR (σ := σ)
  have hX := hF.hX
  refine sumSpecA_mono (Ra.sumSpecA_of_gp2 (Rx := fun _ _ _ _ _ => True) hF.hH hF.hC hF.hal hF.hAC hF.hNS ?_)
    (fun _ _ _ h => h) (fun _ _ _ _ h => h) (fun _ _ _ _ _ _ _ => trivial)
  intro vs body callee rs hl s0 hs0 hloc Γ0 p0 hpre ha hh
  obtain ⟨SI, rfl, hE⟩ := hpre
  rw [hX] at hl
  obtain ⟨rfl, -, hlen, hbind⟩ := MemSafe.lookupCode_gen code_ivvh hl
  have hL0 : Trie.LV [(nm "si", .val (.word SI))] s0.locals := by
    intro q hq
    simp only [List.mem_cons, List.not_mem_nil, or_false] at hq
    subst hq
    rw [hloc]
    exact (hbind 0 (by decide) (by simp)).1
  refine hoareG_conseq (iv_all (SI := SI) (M0 := s0.memory) ha rfl rfl rfl rfl rfl rfl rfl (E2 := fun _ _ _ => True))
    (fun t _ ht => ?_) (fun r t _ _ h r' hr hna => ?_)
  · subst ht
    exact ⟨hL0, Γ0, p0, ext_refl _, hh, rfl, hE⟩
  · obtain ⟨Γ', p', e1, e2, e4⟩ := (h.2 r' hr).2 hna
    exact ⟨Γ', p', e1, e2, fun v hv => ⟨Dn.retOK_nil, trivial⟩⟩

end InitECandidate.Solver.MemSafe.Exb

#print axioms InitECandidate.Solver.MemSafe.Exb.iv_outer
#print axioms InitECandidate.Solver.MemSafe.Exb.sumSpecA_is_valid_versioned_hashes
