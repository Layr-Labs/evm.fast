import InitECandidate.Solver.MemSafe.Trie.HtabCopyRules
import InitECandidate.Solver.MemSafe.Dn.Dwtm
import InitECandidate.Solver.MemSafe.Ins.DelNodeFn

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# `htab_copy`: the memory-safety summary

`sumSpecA_htab_copy`: `htab_copy(t)` at `guestHooksR` for a heap table header type `th`, signature
`[fits (ptr th)] -> [fits (ptr th)]`. The copy is a new header plus one array object (type `tOwn n`) covering the
three arrays; both are added to the typing.
-/

namespace InitECandidate.Solver.MemSafe.Trie
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn InitECandidate.Solver.MemSafe.Ins
open InitECandidate.Solver.Spec.Inv (Cw MCPre CellIn TableWF hdr CAP LeafVal TableRegion Sep Ch ChLay ChSizes)

variable {σ : Type}

theorem code_htc : guestCode (nm "htab_copy") = some (params_htc, htcBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 145) (by decide)) ⟨_, rfl⟩
    entry_htc

theorem hoareG_and2 {X : Ctx 64} {P : State σ → Prop} {c : ProgHOL 64}
    {Q1 Q2 : Option (PanSemResultExact 64) → State σ → Prop}
    (h1 : HoareG σ X P c Q1) (h2 : HoareG σ X P c Q2) :
    HoareG σ X P c (fun r t => Q1 r t ∧ Q2 r t) :=
  fun s hs hp hg => ⟨h1 s hs hp hg, h2 s hs hp hg⟩

def htcSig (th : Nat) : Sig := ⟨[.fits (.ptr th)], [.fits (.ptr th)], [], true⟩

section chain
open InitECandidate.Solver.MemSafe.Struct
variable (m0 : Mem) (d : BitVec 64 → Prop) (T N KS NS OS K0 N0 O0 Nh Nk Nn No : BitVec 64)

def K1 (mm : Mem) : Prop := Cw m0 mm d N T Nh
def K2 (mm : Mem) : Prop := ∃ m1, K1 m0 d T N Nh m1 ∧ Cw m1 mm d KS K0 Nk
def K3 (mm : Mem) : Prop := ∃ m2, K2 m0 d T N KS K0 Nh Nk m2 ∧ mm = Struct.upd m2 (N + BitVec.ofNat 64 32) KS
def K4 (mm : Mem) : Prop := ∃ m3, K3 m0 d T N KS K0 Nh Nk m3 ∧ Cw m3 mm d NS N0 Nn
def K5 (mm : Mem) : Prop :=
  ∃ m4, K4 m0 d T N KS NS K0 N0 Nh Nk Nn m4 ∧ mm = Struct.upd m4 (N + BitVec.ofNat 64 40) NS
def K6 (mm : Mem) : Prop := ∃ m5, K5 m0 d T N KS NS K0 N0 Nh Nk Nn m5 ∧ Cw m5 mm d OS O0 No
def K7 (mm : Mem) : Prop :=
  ∃ m6, K6 m0 d T N KS NS OS K0 N0 O0 Nh Nk Nn No m6 ∧ mm = Struct.upd m6 (N + BitVec.ofNat 64 48) OS

theorem k7_ch {mf : Mem} (h : K7 m0 d T N KS NS OS K0 N0 O0 Nh Nk Nn No mf) :
    Ch m0 d T N KS NS OS K0 N0 O0 Nh Nk Nn No mf := by
  obtain ⟨m6, ⟨m5, ⟨m4, ⟨m3, ⟨m2, ⟨m1, c1, c2⟩, rfl⟩, c3⟩, rfl⟩, c4⟩, rfl⟩ := h
  exact ⟨m1, m2, m4, m6, c1, c2, c3, c4, rfl⟩

end chain

section blocks
variable (p0 : Ptrs) (Γ : Gam) (q : Ptrs)

def BL1 (N : BitVec 64) : Prop := FBlk p0 N 88 Γ q ∧ N.toNat = p0.hp ∧ N.toNat + 88 ≤ heapEnd
def BL2 (N KS zk : BitVec 64) : Prop :=
  BL1 p0 Γ q N ∧ FBlk p0 KS zk.toNat Γ q ∧ N.toNat + 88 ≤ KS.toNat
def BL3 (N KS NS zk zn : BitVec 64) : Prop :=
  BL2 p0 Γ q N KS zk ∧ FBlk p0 NS zn.toNat Γ q ∧ KS.toNat + zk.toNat ≤ NS.toNat
def BL4 (N KS NS OS zk zn zo : BitVec 64) : Prop :=
  BL3 p0 Γ q N KS NS zk zn ∧ FBlk p0 OS zo.toNat Γ q ∧ NS.toNat + zn.toNat ≤ OS.toNat

variable {p0 Γ q}

theorem bl1_persist {Γ' : Gam} {q' : Ptrs} {N : BitVec 64} (h : BL1 p0 Γ q N) (hqe : q.hp ≤ heapEnd)
    (hnf : NewFresh Γ Γ' q q) (hm : q.Mono q') : BL1 p0 Γ' q' N :=
  ⟨fblk_persist h.1 hqe hnf hm, h.2⟩

theorem bl2_persist {Γ' : Gam} {q' : Ptrs} {N KS zk : BitVec 64} (h : BL2 p0 Γ q N KS zk)
    (hqe : q.hp ≤ heapEnd) (hnf : NewFresh Γ Γ' q q) (hm : q.Mono q') : BL2 p0 Γ' q' N KS zk :=
  ⟨bl1_persist h.1 hqe hnf hm, fblk_persist h.2.1 hqe hnf hm, h.2.2⟩

theorem bl3_persist {Γ' : Gam} {q' : Ptrs} {N KS NS zk zn : BitVec 64} (h : BL3 p0 Γ q N KS NS zk zn)
    (hqe : q.hp ≤ heapEnd) (hnf : NewFresh Γ Γ' q q) (hm : q.Mono q') :
    BL3 p0 Γ' q' N KS NS zk zn :=
  ⟨bl2_persist h.1 hqe hnf hm, fblk_persist h.2.1 hqe hnf hm, h.2.2⟩

theorem bl4_persist {Γ' : Gam} {q' : Ptrs} {N KS NS OS zk zn zo : BitVec 64}
    (h : BL4 p0 Γ q N KS NS OS zk zn zo) (hqe : q.hp ≤ heapEnd) (hnf : NewFresh Γ Γ' q q)
    (hm : q.Mono q') : BL4 p0 Γ' q' N KS NS OS zk zn zo :=
  ⟨bl3_persist h.1 hqe hnf hm, fblk_persist h.2.1 hqe hnf hm, h.2.2⟩

end blocks

theorem nf_comp {Γ0 Γ Γ' : Gam} {p0 q : Ptrs} (h0 : NewFresh Γ0 Γ p0 p0) (h : NewFresh Γ Γ' q q) :
    NewFresh Γ0 Γ' p0 p0 := by
  intro o ho a hlo hhi
  rcases h o ho a hlo hhi with ⟨o1, ho1, hb1, ht1, hl1, hh1⟩ | hf
  · rcases h0 o1 ho1 a hl1 hh1 with ⟨o0, ho0, hb0, ht0, hl0, hh0⟩ | hf0
    · exact Or.inl ⟨o0, ho0, hb0.trans hb1, ht0.trans ht1, hl0, hh0⟩
    · unfold Fresh at hf0; omega
  · unfold Fresh at hf; omega

theorem ev_htcLd {s : State σ} {x : String} {W : BitVec 64} (k : Nat)
    (h : s.locals.lookup (nm x) = some (.val (.word W))) :
    ∀ v, ev s (htcLd x k) = some v → v = .val (.word (rd s.memory (W + BitVec.ofNat 64 k))) :=
  Spec.Mpt.Dec.ev_ld h k

theorem ev_htcMul {s : State σ} {nc : BitVec 64} (k : ExpHOL 64) {kv : BitVec 64}
    (hnc : s.locals.lookup (nm "nodecap") = some (.val (.word nc))) (hk : ev s k = some (.val (.word kv))) :
    ev s (htcMul k) = some (.val (.word ((nc + BitVec.ofNat 64 1) * kv))) :=
  ev_mul2 (ev_add2 (ev_lw hnc) (ev_cw s 1)) hk


theorem notInObj_of_nf {Γ0 Γ : Gam} {p0 : Ptrs} (hord0 : p0.Ordered) (hL0 : Layout Types.guestC p0 Γ0)
    (hNF : NewFresh Γ0 Γ p0 p0) {x : Nat} (h1 : p0.hp ≤ x) (h2 : x < heapEnd) : ¬ InObj Γ x := by
  rintro ⟨o, ho, ho1, ho2⟩
  have hE : heapEnd < 2 ^ 64 := by decide
  have hxn : (BitVec.ofNat 64 x).toNat = x := by
    rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)]
  rcases hNF o ho (BitVec.ofNat 64 x) (by rw [hxn]; exact ho1) (by rw [hxn]; exact ho2) with
    ⟨o0, ho0, -, -, hl, hh⟩ | hf
  · rw [hxn] at hl hh
    have hal := live_alloc hord0 hL0 ho0 hl hh
    obtain ⟨o1, o2, o3, o4, o5, o6, o7, o8⟩ := hord0
    unfold Ptrs.Allocated at hal
    omega
  · unfold Fresh at hf
    omega

open InitECandidate.Solver.MemSafe.HtabEntries (G_addTableC arrObjT hdrObjT arrObjT_lo arrObjT_hi InLiveB) in
set_option maxHeartbeats 0 in
theorem htc_adopt {th : Nat} (hth : th ∈ Types.hdrTys) (hrh : (Types.guestC.ty th).region = .heap)
    {a : Act σ} (haC : a.C = Types.guestC) (haH : a.H = Hooks.guestHooksR (σ := σ))
    {Γ : Gam} {q : Ptrs} {t : State σ} (hh : Heap a Γ q t)
    {T N KS NS OS K0 N0 O0 Nh zk zn zo : BitVec 64}
    (ctx : CopyCtx a.s0 a.Γ0 a.p0 th T) (hNh : Nh.toNat = 88)
    (Z : Spec.Inv.ChSizes a.s0.memory T zk zn zo)
    (hK : K0 = hdr a.s0.memory T 32) (hN : N0 = hdr a.s0.memory T 40) (hO : O0 = hdr a.s0.memory T 48)
    (hbd : (CAP a.s0.memory T + 1 ≤ 2 ^ 32 + 1) ∧ (hdr a.s0.memory T 8).toNat ≤ 2 ^ 20)
    (hbl : BL4 a.p0 Γ q N KS NS OS zk zn zo)
    (hK7 : K7 a.s0.memory a.s0.memaddrs T N KS NS OS K0 N0 O0 Nh zk zn zo t.memory)
    (hNF : NewFresh a.Γ0 Γ a.p0 a.p0) (hbe : t.be = a.s0.be) (hmd : t.memaddrs = a.s0.memaddrs)
    (hord0 : a.p0.Ordered) (hL0 : Layout Types.guestC a.p0 a.Γ0) (hgr : a.sg.grows = true) :
    ∃ Γ'' : Gam, Ext Γ Γ'' ∧ Heap a Γ'' q t ∧ ScrOld Γ Γ'' ∧ Fits Γ'' (.ptr th) N := by
  have hord : q.Ordered := heap_ord hh
  have hqe : q.hp ≤ heapEnd := hord.2.1
  have hE64 : heapEnd < 2 ^ 63 := by decide
  have hCh := k7_ch a.s0.memory a.s0.memaddrs T N KS NS OS K0 N0 O0 Nh zk zn zo hK7
  have L := chLay_of_blocks ctx hqe hNh Z hK hN hO hbl.1.1.1.1 hbl.1.1.2.1 hbl.1.2.1 hbl.2.1
    hbl.1.1.2.2 hbl.1.2.2 hbl.2.2 hbd
  obtain ⟨hsepW, Lv, hsh, hex⟩ := ctx.wf
  have R := Spec.Inv.reloc_of_ch (be := a.s0.be) hsepW hCh L Z hK hN hO
  have hwfN : TableWF t N :=
    Spec.Inv.tableWF_reloc ⟨hsepW, Lv, hsh, hex⟩ (Spec.Inv.sep_of_ch hsepW hCh L Z) hmd hbe R
  have hkl : hdr t.memory N 0 = BitVec.ofNat 64 (Types.htKL th) := by
    rw [Spec.Inv.hdr_copy hCh L (Or.inl rfl)]; exact ctx.kl
  have hext : Ext a.Γ0 Γ := hh.2.2.2.1
  have hvalX : ∀ w, LeafVal t.memory N w → Fits Γ (Hooks.valK th) w := fun w hw =>
    fits_ext hext (ctx.val w ((Spec.Inv.leafVal_ch hsepW hsh hCh L Z hK hN hO w).mp hw))
  have hreg : ∀ x : BitVec 64, TableRegion t.memory N x → Spec.Inv.InR x N 88 ∨
      (KS.toNat ≤ x.toNat ∧ x.toNat < OS.toNat + zo.toNat) :=
    fun x hx => Spec.Inv.region_of_ch hsepW hCh L Z hx
  have bN := hbl.1.1.1.1
  have bK := hbl.1.1.2.1
  have bO := hbl.2.1
  have o1 := hbl.1.1.2.2
  have o2 := hbl.1.2.2
  have o3 := hbl.2.2
  have hZo := Z.o
  have hG' : G Types.guestC (Hooks.guestHooksR (σ := σ)) Γ t := by rw [← haC, ← haH]; exact hh.1
  have hps : ptrsOf t = some q := hh.2.1
  have hfree : ∀ x : Nat, a.p0.hp ≤ x → x < heapEnd → ¬ InObj Γ x :=
    fun x h1 h2 => notInObj_of_nf hord0 hL0 hNF h1 h2
  have hNeq : N.toNat = a.p0.hp := hbl.1.1.1.2.1
  have hlo8 : KS.toNat % 8 = 0 := bK.1
  have hzo8 : zo.toNat % 8 = 0 := hbl.2.1.2.1
  have hOS8 : OS.toNat % 8 = 0 := bO.1
  have hKSb : heapBase ≤ KS.toNat := bK.2.2.1
  have hOSq : OS.toNat + zo.toNat ≤ q.hp := bO.2.2.2.1
  have hNb : heapBase ≤ N.toNat := bN.2.2.1
  have hNq : N.toNat + 88 ≤ q.hp := bN.2.2.2.1
  have hGnew := G_addTableC (H := Hooks.guestHooksR (σ := σ)) Hooks.guestHooksR_lawful
    Hooks.guestHooksR_mono Hooks.htabHooks_guestR (th := th) (ta := Types.tOwn N) (rg := Region.heap)
    (Hooks.hkOf_of_tab hth) (Or.inr (Types.tOwn_ge _)) hrh (Types.own_region (Types.tOwn_ge _))
    (by rw [Hooks.hdr_minSz th hth]) (by rw [Types.own_minSz (Types.tOwn_ge _)]; omega)
    (Hooks.hdr_prot th hth) (Types.own_prot (Types.tOwn_ge _)) (Hooks.hdr_untagged th hth)
    (Types.own_untagged (Types.tOwn_ge _)) hG' hps hwfN hvalX hkl
    (lo := KS.toNat) (hi := OS.toNat + zo.toNat) hlo8 (by omega) (by omega) (by omega)
    (Or.inl (by omega)) (Or.inl rfl) hreg
    (fun x h1 h2 => ⟨⟨by omega, by omega⟩, hfree x.toNat (by omega) (by omega)⟩)
    (fun x h1 h2 => ⟨⟨by omega, by omega⟩, (bN.2.2.2.2 x.toNat h1 h2).1⟩)
  obtain ⟨hG0, -, hmono, -, hnf, hmod, hpg, -⟩ := hh
  have hlo : KS.toNat < 2 ^ 64 := by have := KS.isLt; omega
  have hlh : KS.toNat ≤ OS.toNat + zo.toNat := by omega
  have hAlo := arrObjT_lo (ta := Types.tOwn N) (hi := OS.toNat + zo.toNat) hlo
  have hAhi := arrObjT_hi (ta := Types.tOwn N) hlo hlh
  refine ⟨Γ ++ [arrObjT (Types.tOwn N) KS.toNat (OS.toNat + zo.toNat)] ++ [hdrObjT th N],
    Struct.ext_trans (Struct.ext_snoc _ _) (Struct.ext_snoc _ _), ?_, ?_,
    ⟨hdrObjT th N, by simp, rfl, rfl⟩⟩
  · refine ⟨by rw [haC, haH]; exact hGnew, hps, hmono,
      Struct.ext_trans hext (Struct.ext_trans (Struct.ext_snoc _ _) (Struct.ext_snoc _ _)), ?_, hmod, hpg,
      fun h => absurd h (by rw [hgr]; simp)⟩
    intro o ho x h1 h2
    simp only [List.append_assoc, List.mem_append, List.mem_singleton] at ho
    rcases ho with ho | rfl | rfl
    · exact hnf o ho x h1 h2
    · rw [hAlo] at h1
      rw [hAhi] at h2
      exact Or.inr (Or.inl ⟨by omega, by omega⟩)
    · simp only [hdrObjT, Obj.lo, Obj.hi] at h1 h2
      exact Or.inr (Or.inl ⟨by omega, by omega⟩)
  · intro o ho hr
    simp only [List.append_assoc, List.mem_append, List.mem_singleton] at ho
    rcases ho with ho | rfl | rfl
    · exact ⟨o, ho, rfl, rfl⟩
    · exfalso
      have := Types.own_region (Types.tOwn_ge N)
      simp only [arrObjT] at hr
      rw [this] at hr
      cases hr
    · exfalso
      simp only [hdrObjT] at hr
      rw [hrh] at hr
      cases hr

set_option maxHeartbeats 0 in
theorem sumSpecA_htab_copy {th : Nat} (hth : th ∈ Types.hdrTys)
    (hrh : (Types.guestC.ty th).region = .heap) :
    SumSpecA σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "htab_copy") (htcSig th)
      (fun _ _ _ => True) (fun _ _ _ _ => False)
      (fun vs s Γ r t Γ' => ScrOld Γ Γ' ∧ ∀ v, r = .returned v → ∀ p0 p', ptrsOf s = some p0 →
        ptrsOf t = some p' → True) := by
  have hF := Rec.foldOK_guestR (σ := σ)
  have hX := hF.hX
  refine sumSpecA_of_gp (Rx := fun _ _ _ _ _ _ => True) hF.hH hF.hC hF.hal hF.hAC hF.hNS ?_
  intro vs body callee rs hl s0 hs0 hloc Γ0 p0 hpre ha hh
  rw [hX] at hl
  obtain ⟨rfl, -, -, hbind⟩ := MemSafe.lookupCode_gen code_htc hl
  obtain ⟨T, rfl, hfit⟩ : ∃ T : BitVec 64, vs = [.val (.word T)] ∧ Fits Γ0 (.ptr th) T := by
    obtain ⟨hlen, hv⟩ := ha.hargs0
    match vs, hlen with
    | [x], _ =>
      obtain ⟨w, hw, hf⟩ := hv 0 (.fits (.ptr th)) x rfl rfl
      have : x = .val (.word w) := by
        unfold wordOf at hw
        split at hw <;> simp_all
      exact ⟨w, by rw [this], hf⟩
  set a := actOf Types.guestC (Hooks.guestHooksR (σ := σ)) (htcSig th) [] [.val (.word T)] s0 Γ0 p0
    with hadef
  have haC : a.C = Types.guestC := rfl
  have hps : ptrsOf s0 = some p0 := hh.2.1
  have ctx := copyCtx_of_G hth hh.1 hps hfit
  have hord0 : p0.Ordered := ha.hord0
  -- the table and its sizes
  obtain ⟨hsepW, Lv, hsh, hex⟩ := ctx.wf
  obtain ⟨hS20, hC1, hC32⟩ := hex.bnd
  let m0 : Mem := s0.memory
  let d : BitVec 64 → Prop := s0.memaddrs
  let nc : BitVec 64 := hdr m0 T 80
  let st : BitVec 64 := hdr m0 T 8
  let K0 : BitVec 64 := hdr m0 T 32
  let N0 : BitVec 64 := hdr m0 T 40
  let O0 : BitVec 64 := hdr m0 T 48
  let Nh : BitVec 64 := BitVec.ofNat 64 88
  let zk : BitVec 64 := (nc + BitVec.ofNat 64 1) * st
  let zn : BitVec 64 := (nc + BitVec.ofNat 64 1) * BitVec.ofNat 64 32
  let zo : BitVec 64 := (nc + BitVec.ofNat 64 1) * BitVec.ofNat 64 8
  have hlay0 : Spec.Inv.Lay m0 T := Spec.Inv.lay_of_sep hsepW
  have hC32' : CAP m0 T ≤ 2 ^ 32 := hC32
  have hsepE := hsepW
  simp only [Spec.Inv.Sep] at hsepE
  obtain ⟨-, hN8, hO8, -⟩ := hsepE
  have hS20' : (hdr m0 T 8).toNat ≤ 2 ^ 20 := hS20
  have hncN : nc.toNat = CAP m0 T := rfl
  have hstN : st.toNat = (hdr m0 T 8).toNat := rfl
  obtain ⟨hzk, hzn, hzo⟩ := sizes_toNat (nc := nc) (st := st) (by rw [hncN]; exact hC32) (by rw [hstN]; exact hS20)
  have Z : Spec.Inv.ChSizes m0 T zk zn zo := ⟨hzk, hzn, hzo⟩
  have hNh : Nh.toNat = 88 := by decide
  have hCS : (CAP m0 T + 1) * (hdr m0 T 8).toNat ≤ (2 ^ 32 + 1) * 2 ^ 20 :=
    Nat.mul_le_mul (by omega) hS20'
  have hzk62 : zk.toNat < 2 ^ 62 := by rw [Z.k]; omega
  have hzn62 : zn.toNat < 2 ^ 62 := by rw [Z.n]; omega
  have hzo62 : zo.toNat < 2 ^ 62 := by rw [Z.o]; omega
  have hzk8 : zk.toNat % 8 = 0 := by
    rw [Z.k, Nat.mul_mod, hlay0.S8]; simp
  have hzn8 : zn.toNat % 8 = 0 := by rw [Z.n]; omega
  have hzo8 : zo.toNat % 8 = 0 := by rw [Z.o]; omega
  let NF : Gam → Prop := fun Γ => NewFresh Γ0 Γ p0 p0
  let kv0 : List (MlS × BitVec 64) := [(nm "t", T)]
  have hkv0 : LKV kv0 s0.locals := by
    intro p hp
    simp only [kv0, List.mem_cons, List.not_mem_nil, or_false] at hp
    rw [hloc]
    rcases hp with rfl
    exact (hbind 0 (by decide) (by simp)).1
  let Rv0 : Gam → Ptrs → Mem → ValueHOL 64 → Prop := fun Γ q mm v =>
    ∃ N KS NS OS : BitVec 64, v = .val (.word N) ∧ BL4 p0 Γ q N KS NS OS zk zn zo ∧
      K7 m0 d T N KS NS OS K0 N0 O0 Nh zk zn zo mm ∧ NF Γ
  have HB : HoareG σ guestCtx (fun t => t = s0) htcBody (fun r t => t.be = s0.be) := by
    intro s hs hP hg
    subst hP
    exact Spec.Inv.be_preserved s htcBody
  have HG : HoareG σ guestCtx (fun t => t = s0) htcBody
      (GP a (fun _ => False) (fun _ _ _ => True) Rv0) := by
    refine hoareG_pre (P := GI a (LKV kv0) (fun Γ q mm => mm = m0 ∧ q = p0 ∧ NF Γ)) ?_
      (fun t _ ht => by
        subst ht
        exact ⟨hkv0, Γ0, p0, ext_refl _, hh, scrOld_refl _, rfl, rfl, newFresh_refl _ _ _⟩)
    unfold htcBody
    -- `var nodecap = lds (t + 80)`
    have hfnc : ∀ p ∈ kv0, p.1 ≠ nm "nodecap" := by
      intro p hp; simp only [kv0, List.mem_cons, List.not_mem_nil, or_false] at hp
      rcases hp with rfl; (dsimp only; decide)
    refine gp_decK ha.hH (W := nc) (L1 := fun m => LKV ((nm "nodecap", nc) :: kv0) m)
      (L2 := fun _ => False) (L3 := fun _ => False) ?_ ?_ ?_ (fun _ _ _ h => h.elim)
    · intro s Γ q hs hL hh' hE v hv
      rw [ev_htcLd 80 (hL (nm "t", T) (by simp [kv0])) v hv, hE.1]; rfl
    · intro s hs hL
      exact lkv_new hL hfnc nc
    -- `var stride = lds (t + 8)`
    let kv1 : List (MlS × BitVec 64) := (nm "nodecap", nc) :: kv0
    have hfst : ∀ p ∈ kv1, p.1 ≠ nm "stride" := by
      intro p hp; simp only [kv1, kv0, List.mem_cons, List.not_mem_nil, or_false] at hp
      rcases hp with rfl | rfl <;> (dsimp only; decide)
    refine gp_decK ha.hH (W := st) (L1 := fun m => LKV ((nm "stride", st) :: kv1) m)
      (L2 := fun _ => False) (L3 := fun _ => False) ?_ ?_ ?_ (fun _ _ _ h => h.elim)
    · intro s Γ q hs hL hh' hE v hv
      rw [ev_htcLd 8 (hL (nm "t", T) (by simp [kv1, kv0])) v hv, hE.1]; rfl
    · intro s hs hL
      exact lkv_new hL hfst st
    let kv2 : List (MlS × BitVec 64) := (nm "stride", st) :: kv1
    -- `var n = alloc(88)`
    have hfn : ∀ p ∈ kv2, p.1 ≠ nm "n" := by
      intro p hp; simp only [kv2, kv1, kv0, List.mem_cons, List.not_mem_nil, or_false] at hp
      rcases hp with rfl | rfl | rfl <;> (dsimp only; decide)
    refine gp_decCall ha (sumA_of_csumm Dn.alloc_R) (funSpec_allocRel hX) (by simp) (fun _ => rfl)
      (L1 := fun v m => LKV kv2 m ∧ m.lookup (nm "n") = some v ∧ ∃ H : BitVec 64, v = .val (.word H))
      (E1 := fun v Γ q mm => ∀ H : BitVec 64, v = .val (.word H) →
        BL1 p0 Γ q H ∧ mm = m0 ∧ NF Γ)
      (L2 := fun _ => False) (E2 := fun _ _ _ => True)
      (fun s Γ q _ hL hh' hE vs1 hvs => ⟨(anyArgsG (by simp) rfl hvs).1,
        fun x hx => argCells_any (by simp) hx, fun _ => trivial⟩)
      (fun s st vs1 callee r Γ Γ' q q' _ hL hvs he hE hLc hQ co => ⟨scrOld_nf0_co haC co rfl,
        fun v hv _ H hH => ?_⟩)
      (fun s st v hL hsh => ⟨lkv_set (s := { st with locals := s.locals }) hL hfn v,
        by simp [setVarHOLFinite, FUPDATE], val_of_shapeEq_one' hsh⟩)
      ?_ (fun _ _ _ h => h.elim)
    · rw [evs_cons (ev_cw s 88) evs_nil] at hvs
      cases hvs
      obtain ⟨H', hv', hHn, hFB, hmem⟩ := alloc_fblk haC rfl co hLc hv (by decide)
      rw [hv'] at hH
      simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hH
      subst hH
      obtain ⟨hmm, hq, hNF⟩ := hE
      have hq'o : q'.Ordered := heap_ord co.heap
      have h88 : (BitVec.ofNat 64 88).toNat = 88 := by decide
      have h1 := hFB.2.2.2.1
      have h2 := hq'o.2.1
      refine ⟨⟨hFB, by rw [hHn, hq], by omega⟩, by rw [hmem, hmm], nf_comp hNF (co.nfp rfl)⟩
    intro v
    by_cases hw : ∃ H : BitVec 64, v = .val (.word H)
    swap
    · exact hoareG_false fun s _ h => hw h.1.2.2
    obtain ⟨N, rfl⟩ := hw
    let kv3 : List (MlS × BitVec 64) := (nm "n", N) :: kv2
    refine hoareG_pre (P := GI a (LKV kv3) (fun Γ q mm => BL1 p0 Γ q N ∧ mm = m0 ∧ NF Γ)) ?_
      (fun s _ ⟨⟨hL, hk, _⟩, Γ, q, he, hh, hsc, hE⟩ => ⟨lkv_cons hL hk, Γ, q, he, hh, hsc, hE N rfl⟩)
    have hlay := Spec.Inv.lay_of_sep hsepW
    have hT8 : T.toNat % 8 = 0 := hlay.t8
    have hdrA' : ∀ off : Nat, off < 88 → p0.Allocated (T + BitVec.ofNat 64 off).toNat := by
      intro off hoff
      rw [Spec.Inv.add_ofNat_toNat (by have := hlay.ht; omega)]
      exact ctx.hdrA _ (by omega) (by omega)
    -- `memcpy(n, t, 88)`
    refine gp_seq (L := LKV kv3)
      (E := fun Γ q mm => BL1 p0 Γ q N ∧ K1 m0 d T N Nh mm ∧ OldM p0 m0 mm ∧ NF Γ) ?_ ?_
    · refine gp_callFM ha (sumA_of_csumm Dn.memcpy_R) (Spec.Inv.funSpec_memcpy hX) (by simp [Helpers.sigMemcpy])
        (fun _ => rfl) ?_ ?_
      · intro s Γ q hs hL hh' hE vs hvs
        have hev : evs s [lv (nm "n"), lv (nm "t"), cw 88] =
            some [.val (.word N), .val (.word T), .val (.word Nh)] :=
          evs_cons (ev_lw (hL (nm "n", N) (by simp [kv3])))
            (evs_cons (ev_lw (hL (nm "t", T) (by simp [kv3, kv2, kv1, kv0]))) (evs_cons (ev_cw s 88) evs_nil))
        rw [hev] at hvs
        cases hvs
        obtain ⟨hb1, hmm, hNF⟩ := hE
        have hq : q.Ordered := heap_ord hh'
        refine ⟨argsOK_memcpyV (fun c hc => ?_), fun x hx => ?_, fun _ => trivial⟩
        · have hc' : Overlap N.toNat 88 c := by simpa [hNh] using hc
          obtain ⟨h8, hs8, hb, hq1, hf⟩ := hb1.1
          right
          refine ⟨(hf c.toNat (by unfold Overlap at hc'; omega) (by unfold Overlap at hc'; omega)).1, ?_⟩
          unfold Ptrs.Allocated; left; unfold Overlap at hc'; omega
        · have hx' := argCells_memcpyV hx
          have hx'' : Overlap N.toNat 88 x := by simpa [hNh] using hx'
          obtain ⟨h8, hs8, hb, hq1, hf⟩ := hb1.1
          exact Or.inr (Or.inr (Or.inl ((hf x.toNat (by unfold Overlap at hx''; omega)
            (by unfold Overlap at hx''; omega)).2)))
      · intro s st vs callee r Γ Γ' q q' hs hL hvs he hE hLc hQ hext hh' hmo hnfp
        have hev : evs s [lv (nm "n"), lv (nm "t"), cw 88] =
            some [.val (.word N), .val (.word T), .val (.word Nh)] :=
          evs_cons (ev_lw (hL (nm "n", N) (by simp [kv3])))
            (evs_cons (ev_lw (hL (nm "t", T) (by simp [kv3, kv2, kv1, kv0]))) (evs_cons (ev_cw s 88) evs_nil))
        rw [hev] at hvs
        cases hvs
        obtain ⟨hb1, hmm, hNF⟩ := hE
        have hq' : q'.Ordered := heap_ord hh'
        have hqe : q.hp ≤ heapEnd := le_trans hmo.1 hq'.2.1
        refine ⟨scrOld_of_nf0 (layout_of_heap haC hh') (hnfp rfl), fun ⟨v, hv⟩ => ?_⟩
        have hE64 : heapEnd < 2 ^ 64 := by decide
        have hmc : MCPre N T Nh :=
          mcpre_of_fresh (by rw [hNh]; decide) (by have := hb1.1.2.2.2.1; rw [hNh]; omega)
            (by have := hlay.ht; rw [hNh]; omega) hb1.1.1 hT8
            (fun x h1 h2 => (hb1.1.2.2.2.2 x h1 (by rw [hNh] at h2; omega)).2)
            (fun x h1 h2 => ctx.hdrA x h1 (by rw [hNh] at h2; omega))
        have hCP := hLc N T Nh rfl hmc v hv
        have hcw := Spec.Inv.cw_of_cp hCP.2.2.2 hmc hb1.1.1 hT8 (by rw [hNh])
        have hd' : s.memaddrs = d := hs.2.1.trans hs0.2.1.symm
        have e1 : (callEntryStateHOLFinite s callee).memory = m0 := hmm
        have e2 : (callEntryStateHOLFinite s callee).memaddrs = d := hd'
        rw [e1, e2] at hcw
        exact ⟨bl1_persist hb1 hqe (hnfp rfl) hmo, hcw, oldM_cw (hmm ▸ oldM_refl p0 m0) hb1.1 hcw,
          nf_comp hNF (hnfp rfl)⟩
    unfold htcStep
    -- `var keys = alloc((nodecap + 1) * stride)`
    have hnc3 : ∀ m : LocalsH, LKV kv3 m → m.lookup (nm "nodecap") = some (.val (.word nc)) :=
      fun m hm => hm (nm "nodecap", nc) (by simp [kv3, kv2, kv1])
    have hst3 : ∀ m : LocalsH, LKV kv3 m → m.lookup (nm "stride") = some (.val (.word st)) :=
      fun m hm => hm (nm "stride", st) (by simp [kv3, kv2])
    have hfk : ∀ p ∈ kv3, p.1 ≠ nm "keys" := by
      intro p hp; simp only [kv3, kv2, kv1, kv0, List.mem_cons, List.not_mem_nil, or_false] at hp
      rcases hp with rfl | rfl | rfl | rfl <;> (dsimp only; decide)
    refine gp_decCall ha (sumA_of_csumm Dn.alloc_R) (funSpec_allocRel hX) (by simp) (fun _ => rfl)
      (L1 := fun v m => LKV kv3 m ∧ m.lookup (nm "keys") = some v ∧ ∃ H : BitVec 64, v = .val (.word H))
      (E1 := fun v Γ q mm => ∀ H : BitVec 64, v = .val (.word H) →
        BL2 p0 Γ q N H zk ∧ K1 m0 d T N Nh mm ∧ OldM p0 m0 mm ∧ NF Γ)
      (L2 := fun _ => False) (E2 := fun _ _ _ => True)
      (fun s Γ q _ hL hh' hE vs1 hvs => ?_)
      (fun s st vs1 callee r Γ Γ' q q' _ hL hvs he hE hLc hQ co => ⟨scrOld_nf0_co haC co rfl,
        fun v hv _ H hH => ?_⟩)
      (fun s st v hL hsh => ⟨lkv_set (s := { st with locals := s.locals }) hL hfk v,
        by simp [setVarHOLFinite, FUPDATE], val_of_shapeEq_one' hsh⟩)
      ?_ (fun _ _ _ h => h.elim)
    · have hev : evs s [htcMul (lv (nm "stride"))] = some [.val (.word zk)] :=
        evs_cons (ev_htcMul (lv (nm "stride")) (hnc3 _ hL) (ev_lw (hst3 _ hL))) evs_nil
      rw [hev] at hvs
      cases hvs
      exact ⟨(anyArgsG (by simp) rfl hev).1, fun x hx => argCells_any (by simp) hx, fun _ => trivial⟩
    · have hev : evs s [htcMul (lv (nm "stride"))] = some [.val (.word zk)] :=
        evs_cons (ev_htcMul (lv (nm "stride")) (hnc3 _ hL) (ev_lw (hst3 _ hL))) evs_nil
      rw [hev] at hvs
      cases hvs
      obtain ⟨H', hv', hHn, hFB, hmem⟩ := alloc_fblk haC rfl co hLc hv hzk8
      rw [hv'] at hH
      simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hH
      subst hH
      obtain ⟨hb1, hK1, hOld, hNF⟩ := hE
      have hq' : q'.Ordered := heap_ord co.heap
      have hqe : q.hp ≤ heapEnd := le_trans co.mono.1 hq'.2.1
      refine ⟨⟨bl1_persist hb1 hqe (co.nfp rfl) co.mono, hFB, ?_⟩, by rw [hmem]; exact hK1,
        by rw [hmem]; exact hOld, nf_comp hNF (co.nfp rfl)⟩
      have := hb1.1.2.2.2.1
      omega
    intro v
    by_cases hw : ∃ H : BitVec 64, v = .val (.word H)
    swap
    · exact hoareG_false fun s _ h => hw h.1.2.2
    obtain ⟨KS, rfl⟩ := hw
    let kv4 : List (MlS × BitVec 64) := (nm "keys", KS) :: kv3
    refine hoareG_pre (P := GI a (LKV kv4) (fun Γ q mm => BL2 p0 Γ q N KS zk ∧ K1 m0 d T N Nh mm ∧
        OldM p0 m0 mm ∧ NF Γ)) ?_
      (fun s _ ⟨⟨hL, hk, _⟩, Γ, q, he, hh, hsc, hE⟩ => ⟨lkv_cons hL hk, Γ, q, he, hh, hsc, hE KS rfl⟩)
    have hzkc : zk.toNat = (hdr m0 T 8).toNat * (CAP m0 T + 1) := by rw [Z.k, Nat.mul_comm]
    have hE64 : heapEnd < 2 ^ 64 := by decide
    -- `memcpy(keys, lds (t + 32), (nodecap + 1) * stride)`
    have hT4 : ∀ m : LocalsH, LKV kv4 m → m.lookup (nm "t") = some (.val (.word T)) :=
      fun m hm => hm (nm "t", T) (by simp [kv4, kv3, kv2, kv1, kv0])
    have hKS4 : ∀ m : LocalsH, LKV kv4 m → m.lookup (nm "keys") = some (.val (.word KS)) :=
      fun m hm => hm (nm "keys", KS) (by simp [kv4])
    have hnc4 : ∀ m : LocalsH, LKV kv4 m → m.lookup (nm "nodecap") = some (.val (.word nc)) :=
      fun m hm => hnc3 m (fun p hp => hm p (by simp [kv4, hp]))
    have hst4 : ∀ m : LocalsH, LKV kv4 m → m.lookup (nm "stride") = some (.val (.word st)) :=
      fun m hm => hst3 m (fun p hp => hm p (by simp [kv4, hp]))
    refine gp_seq (L := LKV kv4) (E := fun Γ q mm => BL2 p0 Γ q N KS zk ∧
        K2 m0 d T N KS K0 Nh zk mm ∧ OldM p0 m0 mm ∧ NF Γ) ?_ ?_
    · refine gp_callFM ha (sumA_of_csumm Dn.memcpy_R) (Spec.Inv.funSpec_memcpy hX)
        (by simp [Helpers.sigMemcpy]) (fun _ => rfl) ?_ ?_
      · intro s Γ q hs hL hh' hE vs hvs
        obtain ⟨v1, r1, rfl, h1, hr1⟩ := evs_cons_inv hvs
        obtain ⟨v2, r2, rfl, h2, hr2⟩ := evs_cons_inv hr1
        obtain ⟨v3, r3, rfl, h3, hr3⟩ := evs_cons_inv hr2
        rw [evs_nil] at hr3
        cases hr3
        have e1 : v1 = .val (.word KS) := Option.some.inj (h1.symm.trans (ev_lw (hKS4 _ hL)))
        have e3 : v3 = .val (.word zk) :=
          Option.some.inj (h3.symm.trans (ev_htcMul (lv (nm "stride")) (hnc4 _ hL) (ev_lw (hst4 _ hL))))
        subst e1 e3
        obtain ⟨hb2, hK1, hOld, hNF⟩ := hE
        have hq : q.Ordered := heap_ord hh'
        refine ⟨argsOK_memcpyV (fun c hc => ?_), fun x hx => ?_, fun _ => trivial⟩
        · have hc' : Overlap KS.toNat zk.toNat c := by simpa using hc
          obtain ⟨h8, hs8, hb, hq1, hf⟩ := hb2.2.1
          right
          refine ⟨(hf c.toNat (by unfold Overlap at hc'; omega) (by unfold Overlap at hc'; omega)).1, ?_⟩
          unfold Ptrs.Allocated; left; unfold Overlap at hc'; omega
        · have hx' := argCells_memcpyV hx
          have hx'' : Overlap KS.toNat zk.toNat x := by simpa using hx'
          obtain ⟨h8, hs8, hb, hq1, hf⟩ := hb2.2.1
          exact Or.inr (Or.inr (Or.inl ((hf x.toNat (by unfold Overlap at hx''; omega)
            (by unfold Overlap at hx''; omega)).2)))
      · intro s st vs callee r Γ Γ' q q' hs hL hvs he hE hLc hQ hext hh' hmo hnfp
        obtain ⟨v1, r1, rfl, h1, hr1⟩ := evs_cons_inv hvs
        obtain ⟨v2, r2, rfl, h2, hr2⟩ := evs_cons_inv hr1
        obtain ⟨v3, r3, rfl, h3, hr3⟩ := evs_cons_inv hr2
        rw [evs_nil] at hr3
        cases hr3
        obtain ⟨hb2, hK1, hOld, hNF⟩ := hE
        have e1 : v1 = .val (.word KS) := Option.some.inj (h1.symm.trans (ev_lw (hKS4 _ hL)))
        have e3 : v3 = .val (.word zk) :=
          Option.some.inj (h3.symm.trans (ev_htcMul (lv (nm "stride")) (hnc4 _ hL) (ev_lw (hst4 _ hL))))
        have hrdK : rd s.memory (T + BitVec.ofNat 64 32) = K0 := by
          unfold rd; rw [hOld _ (hdrA' 32 (by omega))]; rfl
        have e2 : v2 = .val (.word K0) := by
          rw [ev_htcLd 32 (hT4 _ hL) v2 h2, hrdK]
        subst e1 e2 e3
        have hq' : q'.Ordered := heap_ord hh'
        have hqe : q.hp ≤ heapEnd := le_trans hmo.1 hq'.2.1
        refine ⟨scrOld_of_nf0 (layout_of_heap haC hh') (hnfp rfl), fun ⟨v, hv⟩ => ?_⟩
        have hmc : MCPre KS K0 zk :=
          mcpre_of_fresh hzk62 (by have h1 := hb2.2.1.2.2.2.1; omega) (by have := hlay0.hK; rw [hzkc]; exact this)
            hb2.2.1.1 hlay0.K8
            (fun x h1 h2 => (hb2.2.1.2.2.2.2 x h1 h2).2)
            (fun x h1 h2 => ctx.keysA x h1 (by rw [← hzkc]; exact h2))
        have hCP := hLc KS K0 zk rfl hmc v hv
        have hcw := Spec.Inv.cw_of_cp hCP.2.2.2 hmc hb2.2.1.1 hlay0.K8 hzk8
        have hd' : s.memaddrs = d := hs.2.1.trans hs0.2.1.symm
        have em1 : (callEntryStateHOLFinite s callee).memory = s.memory := rfl
        have em2 : (callEntryStateHOLFinite s callee).memaddrs = d := hd'
        rw [em1, em2] at hcw
        exact ⟨bl2_persist hb2 hqe (hnfp rfl) hmo, ⟨s.memory, hK1, hcw⟩,
          oldM_cw hOld hb2.2.1 hcw, nf_comp hNF (hnfp rfl)⟩
    -- `st n + 32, keys`
    have hAhdr : ∀ (k : Nat), k < 88 → ∀ (Γ : Gam) (q : Ptrs), BL1 p0 Γ q N →
        (N + BitVec.ofNat 64 k).toNat = N.toNat + k ∧ ¬ InObj Γ (N.toNat + k) ∧
          ¬ p0.Allocated (N.toNat + k) := by
      intro k hk Γ q hb
      have hlt := hb.2.2
      refine ⟨Spec.Inv.add_ofNat_toNat (by omega), ?_⟩
      have := hb.1.2.2.2.2 (N.toNat + k) (by omega) (by omega)
      exact this
    refine gp_seq (L := LKV kv4) (E := fun Γ q mm => BL2 p0 Γ q N KS zk ∧
        K3 m0 d T N KS K0 Nh zk mm ∧ OldM p0 m0 mm ∧ NF Γ) ?_ ?_
    · refine gp_stOut ha (A := N + BitVec.ofNat 64 32) ?_ ?_ ?_ ?_
      · intro s hL
        exact ev_add2 (ev_lw (hL (nm "n", N) (by simp [kv4, kv3]))) (ev_cw s 32)
      · intro Γ q M hE
        obtain ⟨e1, h2, h3⟩ := hAhdr 32 (by omega) Γ q hE.1.1
        rw [e1]
        exact ⟨h2, h3⟩
      · intro s v hL hv
        rw [ev_lw (hKS4 _ hL)] at hv
        exact ⟨KS, (Option.some.inj hv).symm⟩
      · intro s Γ q V hL hE hv
        rw [ev_lw (hKS4 _ hL)] at hv
        have hV := Option.some.inj hv
        simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hV
        subst hV
        obtain ⟨hb2, hK2, hOld, hNF⟩ := hE
        obtain ⟨e1, h2, h3⟩ := hAhdr 32 (by omega) Γ q hb2.1
        refine ⟨hb2, ⟨s.memory, hK2, rfl⟩, oldM_upd hOld ?_, hNF⟩
        rw [e1]; exact h3
    -- `var nodes = alloc((nodecap + 1) * 32)`
    have hfnodes : ∀ p ∈ kv4, p.1 ≠ nm "nodes" := by
      intro p hp; simp only [kv4, kv3, kv2, kv1, kv0, List.mem_cons, List.not_mem_nil, or_false] at hp
      rcases hp with rfl | rfl | rfl | rfl | rfl <;> (dsimp only; decide)
    refine gp_decCall ha (sumA_of_csumm Dn.alloc_R) (funSpec_allocRel hX) (by simp) (fun _ => rfl)
      (L1 := fun v m => LKV kv4 m ∧ m.lookup (nm "nodes") = some v ∧ ∃ H : BitVec 64, v = .val (.word H))
      (E1 := fun v Γ q mm => ∀ H : BitVec 64, v = .val (.word H) →
        BL3 p0 Γ q N KS H zk zn ∧ K3 m0 d T N KS K0 Nh zk mm ∧ OldM p0 m0 mm ∧ NF Γ)
      (L2 := fun _ => False) (E2 := fun _ _ _ => True)
      (fun s Γ q _ hL hh' hE vs1 hvs => ?_)
      (fun s st vs1 callee r Γ Γ' q q' _ hL hvs he hE hLc hQ co => ⟨scrOld_nf0_co haC co rfl,
        fun v hv _ H hH => ?_⟩)
      (fun s st v hL hsh => ⟨lkv_set (s := { st with locals := s.locals }) hL hfnodes v,
        by simp [setVarHOLFinite, FUPDATE], val_of_shapeEq_one' hsh⟩)
      ?_ (fun _ _ _ h => h.elim)
    · have hev : evs s [htcMul (cw 32)] = some [.val (.word zn)] :=
        evs_cons (ev_htcMul (cw 32) (hnc4 _ hL) (ev_cw s 32)) evs_nil
      rw [hev] at hvs
      cases hvs
      exact ⟨(anyArgsG (by simp) rfl hev).1, fun x hx => argCells_any (by simp) hx, fun _ => trivial⟩
    · have hev : evs s [htcMul (cw 32)] = some [.val (.word zn)] :=
        evs_cons (ev_htcMul (cw 32) (hnc4 _ hL) (ev_cw s 32)) evs_nil
      rw [hev] at hvs
      cases hvs
      obtain ⟨H', hv', hHn, hFB, hmem⟩ := alloc_fblk haC rfl co hLc hv hzn8
      rw [hv'] at hH
      simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hH
      subst hH
      obtain ⟨hbp, hKp, hOld, hNF⟩ := hE
      have hq' : q'.Ordered := heap_ord co.heap
      have hqe : q.hp ≤ heapEnd := le_trans co.mono.1 hq'.2.1
      refine ⟨⟨bl2_persist hbp hqe (co.nfp rfl) co.mono, hFB, ?_⟩, by rw [hmem]; exact hKp,
        by rw [hmem]; exact hOld, nf_comp hNF (co.nfp rfl)⟩
      have := hbp.2.1.2.2.2.1
      omega
    intro v
    by_cases hw : ∃ H : BitVec 64, v = .val (.word H)
    swap
    · exact hoareG_false fun s _ h => hw h.1.2.2
    obtain ⟨NS, rfl⟩ := hw
    let kv5 : List (MlS × BitVec 64) := (nm "nodes", NS) :: kv4
    refine hoareG_pre (P := GI a (LKV kv5) (fun Γ q mm => BL3 p0 Γ q N KS NS zk zn ∧ K3 m0 d T N KS K0 Nh zk mm ∧
        OldM p0 m0 mm ∧ NF Γ)) ?_
      (fun s _ ⟨⟨hL, hk, _⟩, Γ, q, he, hh, hsc, hE⟩ => ⟨lkv_cons hL hk, Γ, q, he, hh, hsc, hE NS rfl⟩)
    -- `memcpy(nodes, lds (t + 40), (nodecap + 1) * 32)`
    have hTnodes : ∀ m : LocalsH, LKV kv5 m → m.lookup (nm "t") = some (.val (.word T)) :=
      fun m hm => hm (nm "t", T) (by simp [kv5, kv4, kv3, kv2, kv1, kv0])
    have hVnodes : ∀ m : LocalsH, LKV kv5 m → m.lookup (nm "nodes") = some (.val (.word NS)) :=
      fun m hm => hm (nm "nodes", NS) (by simp [kv5])
    have hncnodes : ∀ m : LocalsH, LKV kv5 m → m.lookup (nm "nodecap") = some (.val (.word nc)) :=
      fun m hm => hm (nm "nodecap", nc) (by simp [kv5, kv4, kv3, kv2, kv1, kv0])
    have hstnodes : ∀ m : LocalsH, LKV kv5 m → m.lookup (nm "stride") = some (.val (.word st)) :=
      fun m hm => hm (nm "stride", st) (by simp [kv5, kv4, kv3, kv2, kv1, kv0])
    refine gp_seq (L := LKV kv5) (E := fun Γ q mm => BL3 p0 Γ q N KS NS zk zn ∧
        K4 m0 d T N KS NS K0 N0 Nh zk zn mm ∧ OldM p0 m0 mm ∧ NF Γ) ?_ ?_
    · refine gp_callFM ha (sumA_of_csumm Dn.memcpy_R) (Spec.Inv.funSpec_memcpy hX)
        (by simp [Helpers.sigMemcpy]) (fun _ => rfl) ?_ ?_
      · intro s Γ q hs hL hh' hE vs hvs
        obtain ⟨v1, r1, rfl, h1, hr1⟩ := evs_cons_inv hvs
        obtain ⟨v2, r2, rfl, h2, hr2⟩ := evs_cons_inv hr1
        obtain ⟨v3, r3, rfl, h3, hr3⟩ := evs_cons_inv hr2
        rw [evs_nil] at hr3
        cases hr3
        have e1 : v1 = .val (.word NS) := Option.some.inj (h1.symm.trans (ev_lw (hVnodes _ hL)))
        have e3 : v3 = .val (.word zn) :=
          Option.some.inj (h3.symm.trans (ev_htcMul (cw 32) (hncnodes _ hL) (ev_cw s 32)))
        subst e1 e3
        obtain ⟨hbn, hKn, hOld, hNF⟩ := hE
        have hq : q.Ordered := heap_ord hh'
        refine ⟨argsOK_memcpyV (fun c hc => ?_), fun x hx => ?_, fun _ => trivial⟩
        · have hc' : Overlap NS.toNat zn.toNat c := by simpa using hc
          obtain ⟨h8, hs8, hb, hq1, hf⟩ := hbn.2.1
          right
          refine ⟨(hf c.toNat (by unfold Overlap at hc'; omega) (by unfold Overlap at hc'; omega)).1, ?_⟩
          unfold Ptrs.Allocated; left; unfold Overlap at hc'; omega
        · have hx' := argCells_memcpyV hx
          have hx'' : Overlap NS.toNat zn.toNat x := by simpa using hx'
          obtain ⟨h8, hs8, hb, hq1, hf⟩ := hbn.2.1
          exact Or.inr (Or.inr (Or.inl ((hf x.toNat (by unfold Overlap at hx''; omega)
            (by unfold Overlap at hx''; omega)).2)))
      · intro s st vs callee r Γ Γ' q q' hs hL hvs he hE hLc hQ hext hh' hmo hnfp
        obtain ⟨v1, r1, rfl, h1, hr1⟩ := evs_cons_inv hvs
        obtain ⟨v2, r2, rfl, h2, hr2⟩ := evs_cons_inv hr1
        obtain ⟨v3, r3, rfl, h3, hr3⟩ := evs_cons_inv hr2
        rw [evs_nil] at hr3
        cases hr3
        obtain ⟨hbn, hKn, hOld, hNF⟩ := hE
        have e1 : v1 = .val (.word NS) := Option.some.inj (h1.symm.trans (ev_lw (hVnodes _ hL)))
        have e3 : v3 = .val (.word zn) :=
          Option.some.inj (h3.symm.trans (ev_htcMul (cw 32) (hncnodes _ hL) (ev_cw s 32)))
        have hrdS : rd s.memory (T + BitVec.ofNat 64 40) = N0 := by
          unfold rd; rw [hOld _ (hdrA' 40 (by omega))]; rfl
        have e2 : v2 = .val (.word N0) := by
          rw [ev_htcLd 40 (hTnodes _ hL) v2 h2, hrdS]
        subst e1 e2 e3
        have hq' : q'.Ordered := heap_ord hh'
        have hqe : q.hp ≤ heapEnd := le_trans hmo.1 hq'.2.1
        refine ⟨scrOld_of_nf0 (layout_of_heap haC hh') (hnfp rfl), fun ⟨v, hv⟩ => ?_⟩
        have hmc : MCPre NS N0 zn :=
          mcpre_of_fresh hzn62 (by have h1 := hbn.2.1.2.2.2.1; omega) (by have h := hlay0.hN; rw [Z.n, Nat.mul_comm]; exact h)
            hbn.2.1.1 hN8
            (fun x h1 h2 => (hbn.2.1.2.2.2.2 x h1 h2).2)
            (fun x h1 h2 => ctx.nodesA x h1 (by rw [Z.n, Nat.mul_comm] at h2; exact h2))
        have hCP := hLc NS N0 zn rfl hmc v hv
        have hcw := Spec.Inv.cw_of_cp hCP.2.2.2 hmc hbn.2.1.1 hN8 hzn8
        have hd' : s.memaddrs = d := hs.2.1.trans hs0.2.1.symm
        have em1 : (callEntryStateHOLFinite s callee).memory = s.memory := rfl
        have em2 : (callEntryStateHOLFinite s callee).memaddrs = d := hd'
        rw [em1, em2] at hcw
        exact ⟨bl3_persist hbn hqe (hnfp rfl) hmo, ⟨s.memory, hKn, hcw⟩,
          oldM_cw hOld hbn.2.1 hcw, nf_comp hNF (hnfp rfl)⟩
    -- `st n + 40, nodes`
    refine gp_seq (L := LKV kv5) (E := fun Γ q mm => BL3 p0 Γ q N KS NS zk zn ∧
        K5 m0 d T N KS NS K0 N0 Nh zk zn mm ∧ OldM p0 m0 mm ∧ NF Γ) ?_ ?_
    · refine gp_stOut ha (A := N + BitVec.ofNat 64 40) ?_ ?_ ?_ ?_
      · intro s hL
        exact ev_add2 (ev_lw (hL (nm "n", N) (by simp [kv5, kv4, kv3, kv2, kv1, kv0]))) (ev_cw s 40)
      · intro Γ q M hE
        obtain ⟨e1, h2, h3⟩ := hAhdr 40 (by omega) Γ q hE.1.1.1
        rw [e1]
        exact ⟨h2, h3⟩
      · intro s v hL hv
        rw [ev_lw (hVnodes _ hL)] at hv
        exact ⟨NS, (Option.some.inj hv).symm⟩
      · intro s Γ q V hL hE hv
        rw [ev_lw (hVnodes _ hL)] at hv
        have hV := Option.some.inj hv
        simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hV
        subst hV
        obtain ⟨hbn, hKm, hOld, hNF⟩ := hE
        obtain ⟨e1, h2, h3⟩ := hAhdr 40 (by omega) Γ q hbn.1.1
        refine ⟨hbn, ⟨s.memory, hKm, rfl⟩, oldM_upd hOld ?_, hNF⟩
        rw [e1]; exact h3
    -- `var order = alloc((nodecap + 1) * 8)`
    have hforder : ∀ p ∈ kv5, p.1 ≠ nm "order" := by
      intro p hp; simp only [kv5, kv4, kv3, kv2, kv1, kv0, List.mem_cons, List.not_mem_nil, or_false] at hp
      rcases hp with rfl | rfl | rfl | rfl | rfl | rfl <;> (dsimp only; decide)
    refine gp_decCall ha (sumA_of_csumm Dn.alloc_R) (funSpec_allocRel hX) (by simp) (fun _ => rfl)
      (L1 := fun v m => LKV kv5 m ∧ m.lookup (nm "order") = some v ∧ ∃ H : BitVec 64, v = .val (.word H))
      (E1 := fun v Γ q mm => ∀ H : BitVec 64, v = .val (.word H) →
        BL4 p0 Γ q N KS NS H zk zn zo ∧ K5 m0 d T N KS NS K0 N0 Nh zk zn mm ∧ OldM p0 m0 mm ∧ NF Γ)
      (L2 := fun _ => False) (E2 := fun _ _ _ => True)
      (fun s Γ q _ hL hh' hE vs1 hvs => ?_)
      (fun s st vs1 callee r Γ Γ' q q' _ hL hvs he hE hLc hQ co => ⟨scrOld_nf0_co haC co rfl,
        fun v hv _ H hH => ?_⟩)
      (fun s st v hL hsh => ⟨lkv_set (s := { st with locals := s.locals }) hL hforder v,
        by simp [setVarHOLFinite, FUPDATE], val_of_shapeEq_one' hsh⟩)
      ?_ (fun _ _ _ h => h.elim)
    · have hev : evs s [htcMul (cw 8)] = some [.val (.word zo)] :=
        evs_cons (ev_htcMul (cw 8) (hncnodes _ hL) (ev_cw s 8)) evs_nil
      rw [hev] at hvs
      cases hvs
      exact ⟨(anyArgsG (by simp) rfl hev).1, fun x hx => argCells_any (by simp) hx, fun _ => trivial⟩
    · have hev : evs s [htcMul (cw 8)] = some [.val (.word zo)] :=
        evs_cons (ev_htcMul (cw 8) (hncnodes _ hL) (ev_cw s 8)) evs_nil
      rw [hev] at hvs
      cases hvs
      obtain ⟨H', hv', hHn, hFB, hmem⟩ := alloc_fblk haC rfl co hLc hv hzo8
      rw [hv'] at hH
      simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hH
      subst hH
      obtain ⟨hbp, hKp, hOld, hNF⟩ := hE
      have hq' : q'.Ordered := heap_ord co.heap
      have hqe : q.hp ≤ heapEnd := le_trans co.mono.1 hq'.2.1
      refine ⟨⟨bl3_persist hbp hqe (co.nfp rfl) co.mono, hFB, ?_⟩, by rw [hmem]; exact hKp,
        by rw [hmem]; exact hOld, nf_comp hNF (co.nfp rfl)⟩
      have := hbp.2.1.2.2.2.1
      omega
    intro v
    by_cases hw : ∃ H : BitVec 64, v = .val (.word H)
    swap
    · exact hoareG_false fun s _ h => hw h.1.2.2
    obtain ⟨OS, rfl⟩ := hw
    let kv6 : List (MlS × BitVec 64) := (nm "order", OS) :: kv5
    refine hoareG_pre (P := GI a (LKV kv6) (fun Γ q mm => BL4 p0 Γ q N KS NS OS zk zn zo ∧ K5 m0 d T N KS NS K0 N0 Nh zk zn mm ∧
        OldM p0 m0 mm ∧ NF Γ)) ?_
      (fun s _ ⟨⟨hL, hk, _⟩, Γ, q, he, hh, hsc, hE⟩ => ⟨lkv_cons hL hk, Γ, q, he, hh, hsc, hE OS rfl⟩)
    -- `memcpy(order, lds (t + 48), (nodecap + 1) * 8)`
    have hTorder : ∀ m : LocalsH, LKV kv6 m → m.lookup (nm "t") = some (.val (.word T)) :=
      fun m hm => hm (nm "t", T) (by simp [kv6, kv5, kv4, kv3, kv2, kv1, kv0])
    have hVorder : ∀ m : LocalsH, LKV kv6 m → m.lookup (nm "order") = some (.val (.word OS)) :=
      fun m hm => hm (nm "order", OS) (by simp [kv6])
    have hncorder : ∀ m : LocalsH, LKV kv6 m → m.lookup (nm "nodecap") = some (.val (.word nc)) :=
      fun m hm => hm (nm "nodecap", nc) (by simp [kv6, kv5, kv4, kv3, kv2, kv1, kv0])
    have hstorder : ∀ m : LocalsH, LKV kv6 m → m.lookup (nm "stride") = some (.val (.word st)) :=
      fun m hm => hm (nm "stride", st) (by simp [kv6, kv5, kv4, kv3, kv2, kv1, kv0])
    refine gp_seq (L := LKV kv6) (E := fun Γ q mm => BL4 p0 Γ q N KS NS OS zk zn zo ∧
        K6 m0 d T N KS NS OS K0 N0 O0 Nh zk zn zo mm ∧ OldM p0 m0 mm ∧ NF Γ) ?_ ?_
    · refine gp_callFM ha (sumA_of_csumm Dn.memcpy_R) (Spec.Inv.funSpec_memcpy hX)
        (by simp [Helpers.sigMemcpy]) (fun _ => rfl) ?_ ?_
      · intro s Γ q hs hL hh' hE vs hvs
        obtain ⟨v1, r1, rfl, h1, hr1⟩ := evs_cons_inv hvs
        obtain ⟨v2, r2, rfl, h2, hr2⟩ := evs_cons_inv hr1
        obtain ⟨v3, r3, rfl, h3, hr3⟩ := evs_cons_inv hr2
        rw [evs_nil] at hr3
        cases hr3
        have e1 : v1 = .val (.word OS) := Option.some.inj (h1.symm.trans (ev_lw (hVorder _ hL)))
        have e3 : v3 = .val (.word zo) :=
          Option.some.inj (h3.symm.trans (ev_htcMul (cw 8) (hncorder _ hL) (ev_cw s 8)))
        subst e1 e3
        obtain ⟨hbn, hKn, hOld, hNF⟩ := hE
        have hq : q.Ordered := heap_ord hh'
        refine ⟨argsOK_memcpyV (fun c hc => ?_), fun x hx => ?_, fun _ => trivial⟩
        · have hc' : Overlap OS.toNat zo.toNat c := by simpa using hc
          obtain ⟨h8, hs8, hb, hq1, hf⟩ := hbn.2.1
          right
          refine ⟨(hf c.toNat (by unfold Overlap at hc'; omega) (by unfold Overlap at hc'; omega)).1, ?_⟩
          unfold Ptrs.Allocated; left; unfold Overlap at hc'; omega
        · have hx' := argCells_memcpyV hx
          have hx'' : Overlap OS.toNat zo.toNat x := by simpa using hx'
          obtain ⟨h8, hs8, hb, hq1, hf⟩ := hbn.2.1
          exact Or.inr (Or.inr (Or.inl ((hf x.toNat (by unfold Overlap at hx''; omega)
            (by unfold Overlap at hx''; omega)).2)))
      · intro s st vs callee r Γ Γ' q q' hs hL hvs he hE hLc hQ hext hh' hmo hnfp
        obtain ⟨v1, r1, rfl, h1, hr1⟩ := evs_cons_inv hvs
        obtain ⟨v2, r2, rfl, h2, hr2⟩ := evs_cons_inv hr1
        obtain ⟨v3, r3, rfl, h3, hr3⟩ := evs_cons_inv hr2
        rw [evs_nil] at hr3
        cases hr3
        obtain ⟨hbn, hKn, hOld, hNF⟩ := hE
        have e1 : v1 = .val (.word OS) := Option.some.inj (h1.symm.trans (ev_lw (hVorder _ hL)))
        have e3 : v3 = .val (.word zo) :=
          Option.some.inj (h3.symm.trans (ev_htcMul (cw 8) (hncorder _ hL) (ev_cw s 8)))
        have hrdS : rd s.memory (T + BitVec.ofNat 64 48) = O0 := by
          unfold rd; rw [hOld _ (hdrA' 48 (by omega))]; rfl
        have e2 : v2 = .val (.word O0) := by
          rw [ev_htcLd 48 (hTorder _ hL) v2 h2, hrdS]
        subst e1 e2 e3
        have hq' : q'.Ordered := heap_ord hh'
        have hqe : q.hp ≤ heapEnd := le_trans hmo.1 hq'.2.1
        refine ⟨scrOld_of_nf0 (layout_of_heap haC hh') (hnfp rfl), fun ⟨v, hv⟩ => ?_⟩
        have hmc : MCPre OS O0 zo :=
          mcpre_of_fresh hzo62 (by have h1 := hbn.2.1.2.2.2.1; omega) (by have h := hlay0.hO; rw [Z.o, Nat.mul_comm]; exact h)
            hbn.2.1.1 hO8
            (fun x h1 h2 => (hbn.2.1.2.2.2.2 x h1 h2).2)
            (fun x h1 h2 => ctx.ordA x h1 (by rw [Z.o, Nat.mul_comm] at h2; exact h2))
        have hCP := hLc OS O0 zo rfl hmc v hv
        have hcw := Spec.Inv.cw_of_cp hCP.2.2.2 hmc hbn.2.1.1 hO8 hzo8
        have hd' : s.memaddrs = d := hs.2.1.trans hs0.2.1.symm
        have em1 : (callEntryStateHOLFinite s callee).memory = s.memory := rfl
        have em2 : (callEntryStateHOLFinite s callee).memaddrs = d := hd'
        rw [em1, em2] at hcw
        exact ⟨bl4_persist hbn hqe (hnfp rfl) hmo, ⟨s.memory, hKn, hcw⟩,
          oldM_cw hOld hbn.2.1 hcw, nf_comp hNF (hnfp rfl)⟩
    -- `st n + 48, order`
    refine gp_seq (L := LKV kv6) (E := fun Γ q mm => BL4 p0 Γ q N KS NS OS zk zn zo ∧
        K7 m0 d T N KS NS OS K0 N0 O0 Nh zk zn zo mm ∧ OldM p0 m0 mm ∧ NF Γ) ?_ ?_
    · refine gp_stOut ha (A := N + BitVec.ofNat 64 48) ?_ ?_ ?_ ?_
      · intro s hL
        exact ev_add2 (ev_lw (hL (nm "n", N) (by simp [kv6, kv5, kv4, kv3, kv2, kv1, kv0]))) (ev_cw s 48)
      · intro Γ q M hE
        obtain ⟨e1, h2, h3⟩ := hAhdr 48 (by omega) Γ q hE.1.1.1.1
        rw [e1]
        exact ⟨h2, h3⟩
      · intro s v hL hv
        rw [ev_lw (hVorder _ hL)] at hv
        exact ⟨OS, (Option.some.inj hv).symm⟩
      · intro s Γ q V hL hE hv
        rw [ev_lw (hVorder _ hL)] at hv
        have hV := Option.some.inj hv
        simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hV
        subst hV
        obtain ⟨hbn, hKm, hOld, hNF⟩ := hE
        obtain ⟨e1, h2, h3⟩ := hAhdr 48 (by omega) Γ q hbn.1.1.1
        refine ⟨hbn, ⟨s.memory, hKm, rfl⟩, oldM_upd hOld ?_, hNF⟩
        rw [e1]; exact h3
    -- `return n`
    refine gp_ret ha.hH (L2 := fun _ => False) (E2 := fun _ _ _ => True) (Rv := Rv0) ?_
    intro s Γ q hs hL he hh hE v hv
    rw [ev_lw (hL (nm "n", N) (by simp [kv6, kv5, kv4, kv3]))] at hv
    cases hv
    obtain ⟨hbn, hKm, hOld, hNF⟩ := hE
    exact ⟨N, KS, NS, OS, rfl, hbn, hKm, hNF⟩
  have hgr : a.sg.grows = true := rfl
  obtain ⟨pG, hpG, hordG, hL0', -⟩ := id hh.1
  have hpe : pG = p0 := by rw [hps] at hpG; exact (Option.some.inj hpG).symm
  have hL0 : Layout Types.guestC p0 Γ0 := by rw [← hpe]; exact hL0'
  refine hoareG_conseq (hoareG_and2 HG HB) (fun t _ ht => ht) (fun r t ht _ h => ?_)
  obtain ⟨hgp, hbe⟩ := h
  intro r' hr hna
  obtain ⟨Γ1, q1, he, hh1, hsc, hv⟩ := gp_final hgp r' hr hna
  by_cases hret : ∃ v, r' = .returned v
  swap
  · exact ⟨Γ1, q1, he, hh1, hsc, fun v hv' => absurd ⟨v, hv'⟩ hret⟩
  obtain ⟨v, rfl⟩ := hret
  obtain ⟨N, KS, NS, OS, rfl, hbl, hK7, hNF⟩ := hv v rfl
  have hmd : t.memaddrs = s0.memaddrs := ht.2.1.trans hs0.2.1.symm
  obtain ⟨Γ2, hext2, hh2, hsc2, hfit⟩ := htc_adopt hth hrh haC rfl hh1 ctx hNh Z rfl rfl rfl
    ⟨Nat.add_le_add_right hC32 1, hS20⟩ hbl hK7 hNF hbe hmd hord0 hL0 hgr
  refine ⟨Γ2, q1, Struct.ext_trans he hext2, hh2, scrOld_trans hsc hsc2, fun v' hv' => ?_⟩
  cases hv'
  exact ⟨HtabEntries.retOK_ptr hfit, trivial⟩

end InitECandidate.Solver.MemSafe.Trie

#print axioms InitECandidate.Solver.MemSafe.Trie.sumSpecA_htab_copy
