import InitECandidate.Solver.MemSafe.Trie.HtabCopyCode

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# `htab_copy`: auxiliary facts

`FBlk`: a fresh block. `mcpre_of_fresh`: the `memcpy` precondition from freshness of the destination and
allocation of the source. `CopyCtx`: the facts about the original table read off the typing.
-/

namespace InitECandidate.Solver.MemSafe.Trie
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn
open InitECandidate.Solver.Spec.Inv (MCPre CellIn TableWF hdr CAP LeafVal TableRegion Sep)

variable {σ : Type}

/-- A fresh block `[B, B + sz)` of the current allocator `q`: aligned, in the heap below `q.hp`, in no `Γ`
object and unallocated at the entry allocator `p0`. -/
def FBlk (p0 : Ptrs) (B : BitVec 64) (sz : Nat) (Γ : Gam) (q : Ptrs) : Prop :=
  B.toNat % 8 = 0 ∧ sz % 8 = 0 ∧ heapBase ≤ B.toNat ∧ B.toNat + sz ≤ q.hp ∧
    ∀ x : Nat, B.toNat ≤ x → x < B.toNat + sz → ¬ InObj Γ x ∧ ¬ p0.Allocated x

theorem heapBase_mod : heapBase % 8 = 0 := by decide
theorem heapEnd_mod : heapEnd % 8 = 0 := by decide

theorem allocated_cell {p : Ptrs} (hp : p.Ordered) {x : Nat} (h : p.Allocated x) :
    p.Allocated (x / 8 * 8) := by
  obtain ⟨o1, o2, o3, o4, o5, o6, o7, o8⟩ := hp
  have := heapBase_mod
  have := heapEnd_mod
  unfold Ptrs.Allocated at h ⊢
  have : scratchEnd % 8 = 0 := by decide
  omega

theorem inObj_cell {C : Cfg} {p : Ptrs} {Γ : Gam} (hL : Layout C p Γ) {x : Nat} (h : InObj Γ x) :
    InObj Γ (x / 8 * 8) := by
  obtain ⟨o, ho, h1, h2⟩ := h
  obtain ⟨a1, a2, -⟩ := hL.1 o ho
  refine ⟨o, ho, ?_, ?_⟩ <;> unfold Obj.lo Obj.hi at * <;> omega

/-- A fresh block from the cell facts of an allocation. -/
theorem fblk_of_cells {C : Cfg} {p0 q : Ptrs} {Γ : Gam} {B : BitVec 64} {sz : Nat}
    (ho : p0.Ordered) (hL : Layout C q Γ) (hB8 : B.toNat % 8 = 0) (hsz8 : sz % 8 = 0)
    (hb : heapBase ≤ B.toNat) (hq : B.toNat + sz ≤ q.hp) (hqe : q.hp ≤ heapEnd)
    (hc : ∀ c : BitVec 64, Overlap B.toNat sz c → ¬ InObj Γ c.toNat ∧ ¬ p0.Allocated c.toNat) :
    FBlk p0 B sz Γ q := by
  refine ⟨hB8, hsz8, hb, hq, fun x h1 h2 => ?_⟩
  have hE : heapEnd < 2 ^ 64 := by decide
  have hx : x < 2 ^ 64 := by omega
  have hcn : (BitVec.ofNat 64 (x / 8 * 8)).toNat = x / 8 * 8 := by
    rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)]
  have hov : Overlap B.toNat sz (BitVec.ofNat 64 (x / 8 * 8)) := by
    unfold Overlap; rw [hcn]; omega
  obtain ⟨n1, n2⟩ := hc _ hov
  rw [hcn] at n1 n2
  exact ⟨fun hin => n1 (inObj_cell hL hin), fun hal => n2 (allocated_cell ho hal)⟩

/-- A fresh block stays fresh under a non-growing call. -/
theorem fblk_persist {p0 q q' : Ptrs} {Γ Γ' : Gam} {B : BitVec 64} {sz : Nat}
    (h : FBlk p0 B sz Γ q) (hqe : q.hp ≤ heapEnd) (hnf : NewFresh Γ Γ' q q) (hm : q.Mono q') :
    FBlk p0 B sz Γ' q' := by
  obtain ⟨h8, hs8, hb, hq, hc⟩ := h
  refine ⟨h8, hs8, hb, by have := hm.1; omega, fun x h1 h2 => ⟨?_, (hc x h1 h2).2⟩⟩
  rintro ⟨o, ho, ho1, ho2⟩
  have hE : heapEnd < 2 ^ 64 := by decide
  have hx : x < 2 ^ 64 := by omega
  have hxn : (BitVec.ofNat 64 x).toNat = x := by
    rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt hx]
  rcases hnf o ho (BitVec.ofNat 64 x) (by rw [hxn]; exact ho1) (by rw [hxn]; exact ho2) with
    ⟨o0, ho0, -, -, hl, hh⟩ | hf
  · rw [hxn] at hl hh
    exact (hc x h1 h2).1 ⟨o0, ho0, hl, hh⟩
  · unfold Fresh at hf
    rw [hxn] at hf
    omega

open InitECandidate.Solver.Spec.Inv in
theorem mcpre_of_fresh {p0 : Ptrs} {D S N : BitVec 64} (hN : N.toNat < 2 ^ 62)
    (hD : D.toNat + N.toNat ≤ 2 ^ 64) (hS : S.toNat + N.toNat ≤ 2 ^ 64) (hD8 : D.toNat % 8 = 0)
    (hS8 : S.toNat % 8 = 0) (hfD : ∀ x : Nat, D.toNat ≤ x → x < D.toNat + N.toNat → ¬ p0.Allocated x)
    (hfS : ∀ x : Nat, S.toNat ≤ x → x < S.toNat + N.toNat → p0.Allocated x) : MCPre D S N := by
  refine ⟨hN, hD, hS, fun a h1 h2 => ?_⟩
  unfold CellIn at h1 h2
  exact hfD a.toNat (by omega) (by omega) (hfS a.toNat (by omega) (by omega))

theorem sizes_toNat {nc st : BitVec 64} (hC : nc.toNat ≤ 2 ^ 32) (hS : st.toNat ≤ 2 ^ 20) :
    ((nc + BitVec.ofNat 64 1) * st).toNat = (nc.toNat + 1) * st.toNat ∧
      ((nc + BitVec.ofNat 64 1) * BitVec.ofNat 64 32).toNat = (nc.toNat + 1) * 32 ∧
      ((nc + BitVec.ofNat 64 1) * BitVec.ofNat 64 8).toNat = (nc.toNat + 1) * 8 := by
  have h1 : (nc + BitVec.ofNat 64 1).toNat = nc.toNat + 1 := by
    rw [BitVec.toNat_add, BitVec.toNat_ofNat]
    exact Nat.mod_eq_of_lt (by omega)
  refine ⟨?_, ?_, ?_⟩
  · rw [BitVec.toNat_mul, h1]
    apply Nat.mod_eq_of_lt
    have : (nc.toNat + 1) * st.toNat ≤ (2 ^ 32 + 1) * 2 ^ 20 := Nat.mul_le_mul (by omega) hS
    omega
  · rw [BitVec.toNat_mul, h1, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (a := 32) (by omega)]
    apply Nat.mod_eq_of_lt
    omega
  · rw [BitVec.toNat_mul, h1, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (a := 8) (by omega)]
    apply Nat.mod_eq_of_lt
    omega

/-- A byte of an array of a table with array hook `ArrIn` is allocated. -/
theorem alloc_of_arr {Γ0 : Gam} {p0 : Ptrs} {m : Mem} {o0 : Obj} (hord : p0.Ordered)
    (hL : Layout Types.guestC p0 Γ0) (harr : Hooks.ArrIn Γ0 m o0) {B len x : Nat} (hB8 : B % 8 = 0)
    (hx1 : B ≤ x) (hx2 : x < B + len) (hlt : B + len ≤ 2 ^ 64)
    (hreg : ∀ c : BitVec 64, B ≤ c.toNat → c.toNat < B + len →
      InitECandidate.Solver.Spec.Inv.TableRegion m o0.base c) : p0.Allocated x := by
  have hcn : (BitVec.ofNat 64 (x / 8 * 8)).toNat = x / 8 * 8 := by
    rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)]
  obtain ⟨y, hy, -, h1, h2⟩ := harr (BitVec.ofNat 64 (x / 8 * 8)) (hreg _ (by rw [hcn]; omega)
    (by rw [hcn]; omega)) (by rw [hcn]; omega)
  rw [hcn] at h1 h2
  obtain ⟨a1, a2, -⟩ := hL.1 y hy
  apply live_alloc hord hL hy
  · unfold Obj.lo at *; omega
  · unfold Obj.hi Obj.lo at *; omega

/-- What the typing says about the table being copied. -/
structure CopyCtx (s0 : State σ) (Γ0 : Gam) (p0 : Ptrs) (th : Nat) (T : BitVec 64) : Prop where
  wf : TableWF s0 T
  kl : hdr s0.memory T 0 = BitVec.ofNat 64 (Types.htKL th)
  val : ∀ w, LeafVal s0.memory T w → Fits Γ0 (Hooks.valK th) w
  hdrA : ∀ x : Nat, T.toNat ≤ x → x < T.toNat + 88 → p0.Allocated x
  nodesA : ∀ x : Nat, (hdr s0.memory T 40).toNat ≤ x →
    x < (hdr s0.memory T 40).toNat + 32 * (CAP s0.memory T + 1) → p0.Allocated x
  ordA : ∀ x : Nat, (hdr s0.memory T 48).toNat ≤ x →
    x < (hdr s0.memory T 48).toNat + 8 * (CAP s0.memory T + 1) → p0.Allocated x
  keysA : ∀ x : Nat, (hdr s0.memory T 32).toNat ≤ x →
    x < (hdr s0.memory T 32).toNat + (hdr s0.memory T 8).toNat * (CAP s0.memory T + 1) → p0.Allocated x

open InitECandidate.Solver.Spec.Inv in
theorem copyCtx_of_G {th : Nat} (hth : th ∈ Types.hdrTys) {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {T : BitVec 64}
    (hG : G Types.guestC (Hooks.guestHooksR (σ := σ)) Γ0 s0) (hp : ptrsOf s0 = some p0)
    (hfit : Fits Γ0 (.ptr th) T) : CopyCtx s0 Γ0 p0 th T := by
  obtain ⟨o0, ho0, hb0, ht0⟩ := hfit
  obtain ⟨pG, hpG, hord, hL, -, -, -, hW⟩ := id hG
  rw [hp] at hpG; cases hpG
  have hko : Hooks.hkOf o0.ty = .tab := by rw [ht0]; exact Hooks.hkOf_of_tab hth
  have hw : Hooks.tabW Γ0 s0 o0 := Hooks.htabHooks_guestR.get Γ0 s0 o0 hko (hW o0 ho0)
  obtain ⟨-, -, hwf0, harr, hval, hkl⟩ := hw
  rw [hb0] at hwf0
  have hlay := lay_of_sep hwf0.1
  have hsepE := hwf0.1
  simp only [InitECandidate.Solver.Spec.Inv.Sep] at hsepE
  obtain ⟨t8, N8, O8, K8, S8, -, -, -, -, -, -, -, -, -, -, -⟩ := hsepE
  refine ⟨hwf0, ?_, ?_, ?_, ?_, ?_, ?_⟩
  · have := hkl; unfold Hooks.KLOK at this; rw [ht0, hb0] at this; exact this
  · intro w hw'
    have := hval w (by rw [hb0]; exact hw')
    rw [ht0] at this
    exact this
  · intro x h1 h2
    have hsz := (hL.1 o0 ho0).2.2.2.1
    rw [ht0, Hooks.hdr_minSz th hth] at hsz
    have e1 : o0.lo = T.toNat := by unfold Obj.lo; rw [hb0]
    have e2 : o0.hi = T.toNat + o0.size := by unfold Obj.hi; rw [hb0]
    apply live_alloc hord hL ho0
    · omega
    · omega
  · intro x h1 h2
    refine alloc_of_arr hord hL harr N8 h1 h2 hlay.hN (fun c hc1 hc2 => ?_)
    rw [hb0]
    exact Or.inr (Or.inl ⟨hc1, hc2⟩)
  · intro x h1 h2
    refine alloc_of_arr hord hL harr O8 h1 h2 hlay.hO (fun c hc1 hc2 => ?_)
    rw [hb0]
    exact Or.inr (Or.inr (Or.inl ⟨hc1, hc2⟩))
  · intro x h1 h2
    refine alloc_of_arr hord hL harr K8 h1 h2 hlay.hK (fun c hc1 hc2 => ?_)
    rw [hb0]
    exact Or.inr (Or.inr (Or.inr ⟨hc1, hc2⟩))

open InitECandidate.Solver.Spec.Inv (ChLay ChSizes Lay lay_of_sep) in
/-- The layout of the copy against the original, from the freshness of the four blocks. -/
theorem chLay_of_blocks {th : Nat} {s0 : State σ} {Γ0 Γ : Gam} {p0 q : Ptrs} {T N KS NS OS K0 N0 O0 Nh Nk Nn No : BitVec 64}
    (ctx : CopyCtx s0 Γ0 p0 th T) (hq : q.hp ≤ heapEnd) (hNh : Nh.toNat = 88)
    (Z : ChSizes s0.memory T Nk Nn No)
    (hK : K0 = hdr s0.memory T 32) (hN : N0 = hdr s0.memory T 40) (hO : O0 = hdr s0.memory T 48)
    (bN : FBlk p0 N 88 Γ q) (bK : FBlk p0 KS Nk.toNat Γ q) (bN' : FBlk p0 NS Nn.toNat Γ q)
    (bO : FBlk p0 OS No.toNat Γ q)
    (o1 : N.toNat + 88 ≤ KS.toNat) (o2 : KS.toNat + Nk.toNat ≤ NS.toNat) (o3 : NS.toNat + Nn.toNat ≤ OS.toNat)
    (hbd : (CAP s0.memory T + 1 ≤ 2 ^ 32 + 1) ∧ (hdr s0.memory T 8).toNat ≤ 2 ^ 20) :
    ChLay T N KS NS OS K0 N0 O0 Nh Nk Nn No := by
  have hl := lay_of_sep ctx.wf.1
  have hsepE := ctx.wf.1
  simp only [InitECandidate.Solver.Spec.Inv.Sep] at hsepE
  obtain ⟨t8, N8, O8, K8, S8, -, -, -, -, -, -, -, -, -, -, -⟩ := hsepE
  obtain ⟨n8, hs8, hb1, hq1, hf1⟩ := bN
  obtain ⟨k8, hk8, hb2, hq2, hf2⟩ := bK
  obtain ⟨ns8, hn8, hb3, hq3, hf3⟩ := bN'
  obtain ⟨os8, ho8, hb4, hq4, hf4⟩ := bO
  have hE : heapEnd < 2 ^ 63 := by decide
  have zk := Z.k
  have zn := Z.n
  have zo := Z.o
  have hCS : (CAP s0.memory T + 1) * (hdr s0.memory T 8).toNat ≤ (2 ^ 32 + 1) * 2 ^ 20 :=
    Nat.mul_le_mul hbd.1 hbd.2
  have hNk62 : Nk.toNat < 2 ^ 62 := by rw [zk]; omega
  have hNn62 : Nn.toNat < 2 ^ 62 := by rw [zn]; have := hbd.1; omega
  have hNo62 : No.toNat < 2 ^ 62 := by rw [zo]; have := hbd.1; omega
  have hlK := hl.hK
  have hlN := hl.hN
  have hlO := hl.hO
  have hlt := hl.ht
  have hcomm : (hdr s0.memory T 8).toNat * (CAP s0.memory T + 1) = Nk.toNat := by
    rw [zk, Nat.mul_comm]
  have hK' : K0.toNat + Nk.toNat ≤ 2 ^ 64 := by rw [hK, ← hcomm]; exact hlK
  have hN' : N0.toNat + Nn.toNat ≤ 2 ^ 64 := by rw [hN, zn]; omega
  have hO' : O0.toNat + No.toNat ≤ 2 ^ 64 := by rw [hO, zo]; omega
  have hos : OS.toNat + No.toNat ≤ q.hp := hq4
  have hold : ∀ B c : Nat, (∀ x : Nat, B ≤ x → x < B + c → p0.Allocated x) →
      ∀ x : Nat, B ≤ x → x < B + c → ¬ p0.Allocated x → False := fun B c h x h1 h2 h3 => h3 (h x h1 h2)
  have hT8 : T.toNat % 8 = 0 := t8
  have hK8' : K0.toNat % 8 = 0 := by rw [hK]; exact K8
  have hN8' : N0.toNat % 8 = 0 := by rw [hN]; exact N8
  have hO8' : O0.toNat % 8 = 0 := by rw [hO]; exact O8
  have aH := ctx.hdrA
  have aN : ∀ x : Nat, N0.toNat ≤ x → x < N0.toNat + Nn.toNat → p0.Allocated x := by
    intro x h1 h2; rw [hN] at h1 h2; rw [zn] at h2
    exact ctx.nodesA x h1 (by omega)
  have aO : ∀ x : Nat, O0.toNat ≤ x → x < O0.toNat + No.toNat → p0.Allocated x := by
    intro x h1 h2; rw [hO] at h1 h2; rw [zo] at h2
    exact ctx.ordA x h1 (by omega)
  have aK : ∀ x : Nat, K0.toNat ≤ x → x < K0.toNat + Nk.toNat → p0.Allocated x := by
    intro x h1 h2; rw [hK] at h1 h2; rw [← hcomm] at h2
    exact ctx.keysA x h1 h2
  have hE64 : heapEnd < 2 ^ 64 := by decide
  have mc1 : MCPre N T Nh :=
    mcpre_of_fresh (by omega) (by omega) (by omega) n8 hT8
      (fun x h1 h2 => (hf1 x h1 (by omega)).2) (fun x h1 h2 => aH x h1 (by omega))
  have mc2 : MCPre KS K0 Nk :=
    mcpre_of_fresh hNk62 (by omega) hK' k8 hK8' (fun x h1 h2 => (hf2 x h1 h2).2) aK
  have mc3 : MCPre NS N0 Nn :=
    mcpre_of_fresh hNn62 (by omega) hN' ns8 hN8' (fun x h1 h2 => (hf3 x h1 h2).2) aN
  have mc4 : MCPre OS O0 No :=
    mcpre_of_fresh hNo62 (by omega) hO' os8 hO8' (fun x h1 h2 => (hf4 x h1 h2).2) aO
  have newNA : ∀ a : BitVec 64, (CellIn N 88 a ∨ CellIn KS Nk.toNat a ∨ CellIn NS Nn.toNat a ∨
      CellIn OS No.toNat a) → ¬ p0.Allocated a.toNat := by
    intro a ha
    unfold InitECandidate.Solver.Spec.Inv.CellIn at ha
    rcases ha with h | h | h | h
    · exact (hf1 a.toNat (by omega) (by omega)).2
    · exact (hf2 a.toNat (by omega) (by omega)).2
    · exact (hf3 a.toNat (by omega) (by omega)).2
    · exact (hf4 a.toNat (by omega) (by omega)).2
  have oldA : ∀ a : BitVec 64, (CellIn T 88 a ∨ CellIn K0 Nk.toNat a ∨ CellIn N0 Nn.toNat a ∨
      CellIn O0 No.toNat a) → p0.Allocated a.toNat := by
    intro a ha
    unfold InitECandidate.Solver.Spec.Inv.CellIn at ha
    rcases ha with h | h | h | h
    · exact aH a.toNat (by omega) (by omega)
    · exact aK a.toNat (by omega) (by omega)
    · exact aN a.toNat (by omega) (by omega)
    · exact aO a.toNat (by omega) (by omega)
  refine ChLay.mk hNh n8 k8 ns8 os8 hT8 hK8' hN8' hO8' hk8 hn8 ho8 o1 o2 o3 (by omega) mc1 mc2 mc3 mc4 ?_
  intro a ha
  exact ⟨fun h => newNA a (Or.inl h) (oldA a ha),
      fun h => newNA a (Or.inr (Or.inl h)) (oldA a ha),
      fun h => newNA a (Or.inr (Or.inr (Or.inl h))) (oldA a ha),
      fun h => newNA a (Or.inr (Or.inr (Or.inr h))) (oldA a ha)⟩

/-- The memory agrees with the entry memory on every cell allocated at the entry. -/
def OldM (p0 : Ptrs) (m0 mm : Mem) : Prop := ∀ a : BitVec 64, p0.Allocated a.toNat → mm a = m0 a

theorem oldM_refl (p0 : Ptrs) (m0 : Mem) : OldM p0 m0 m0 := fun _ _ => rfl

theorem oldM_cw {p0 : Ptrs} {m0 mm mm' : Mem} {d : BitVec 64 → Prop} {D S Nb : BitVec 64} {Γ : Gam}
    {q : Ptrs} (h : OldM p0 m0 mm) (hb : FBlk p0 D Nb.toNat Γ q) (hc : InitECandidate.Solver.Spec.Inv.Cw mm mm' d D S Nb) :
    OldM p0 m0 mm' := by
  intro a ha
  rw [hc.1 a (fun hin => ?_)]
  · exact h a ha
  · unfold InitECandidate.Solver.Spec.Inv.CellIn at hin
    obtain ⟨h8, -, -, -, hf⟩ := hb
    exact (hf a.toNat (by omega) (by omega)).2 ha

theorem oldM_upd {p0 : Ptrs} {m0 mm : Mem} {A V : BitVec 64} (h : OldM p0 m0 mm)
    (hA : ¬ p0.Allocated A.toNat) : OldM p0 m0 (InitECandidate.Solver.MemSafe.Struct.upd mm A V) := by
  intro a ha
  have hne : a ≠ A := fun e => hA (e ▸ ha)
  rw [InitECandidate.Solver.MemSafe.Struct.upd_ne hne]
  exact h a ha

end InitECandidate.Solver.MemSafe.Trie
