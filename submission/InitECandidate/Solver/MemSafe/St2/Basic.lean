import InitECandidate.Solver.MemSafe.Stor.Gso
import InitECandidate.Solver.Band4.All
import InitECandidate.Solver.MemSafe.Ssz.DecCst
import InitECandidate.Solver.MemSafe.Integ.DecodeAccount
set_option autoImplicit false
set_option maxRecDepth 1000000
namespace InitECandidate.Solver.MemSafe.St2
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Stor
open InitECandidate.Solver.Band4 (VIn NVal VTy)
open InitECandidate.Solver.Band (NdOf nodeTys)
open InitECandidate.Solver.Spec.Mpt (NdClosed NullOrNd)
open InitECandidate.Solver.MemSafe.Types (guestC tNLEAF tNBRANCH tWSR)

variable {σ : Type} {X : Ctx 64}

/-- **A capability summary from any proof of the body in the checker's invariant** (`csumm_of_pre`
with capabilities). -/
theorem csumm_of_pre_caps {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) (hC : CfgOK C)
    (hal : ∀ x, X.memaddrs x → x.toNat % 8 = 0) (hAC : AllocCfg C) (hNS : NullSafe X)
    {sg : Sig} {cs : List Cap} (hcs : capsOK C sg cs = true) {f : MlS} {ps : List (MlS × ShapeHOL)}
    {bd : ProgHOL 64} {rsh : ShapeHOL}
    (hcode : X.code.lookup f = some (ps, bd, rsh)) (hlen : sg.params.length = ps.length)
    (hbd : ∀ vs (s0 : State σ) Γ0 p0, ActOK (actOf C H sg cs vs s0 Γ0 p0) X →
      ∀ Γ Θ, ∃ o : AOut, HoareG σ X (IG (actOf C H sg cs vs s0 Γ0 p0)
        (initEnv ps sg.params 0 ⟨[], []⟩) Γ Θ) bd (SPost (actOf C H sg cs vs s0 Γ0 p0) sg.ret o Γ Θ)) :
    CSumm σ X C H f sg cs := by
  intro vs body callee rs hl s hs hloc r hr hgood hna Γ hG hargs hreq
  obtain ⟨rfl, -, hvl, hbind⟩ := lookupCode_gen hcode hl
  obtain ⟨p1, hps, hargs⟩ := hargs
  obtain ⟨ha, hh⟩ := act_entry hH hC hal hAC hNS hcs hG hps hargs hreq
  obtain ⟨Θ, hig⟩ := init_ig (a := actOf C H sg cs vs s Γ p1) hH hh ps hlen hvl hargs
    (fun i hi hv => by rw [hloc]; exact hbind i hi hv) 0 ⟨[], []⟩ []
    (Nat.zero_le _) ⟨rfl, fun k td hk => by simp at hk⟩ (fun x av hx => by simp at hx)
  simp only [List.drop_zero] at hig
  obtain ⟨o, Hb⟩ := hbd vs s Γ p1 ha Γ Θ
  have Hs := Hb s hs hig (by rw [hr]; exact hgood)
  rw [hr] at Hs
  have core : ∃ Γ' p', Ext Γ Γ' ∧ Heap (actOf C H sg cs vs s Γ p1) Γ' p'
      (evaluateHOLFiniteState s body).2 ∧
      (∀ v, r = .returned v → RetOK Γ' p1 p' vs sg.ret v) := by
    rcases r with _ | _ | _ | _ | _ | v | ⟨e, v⟩ | e
    all_goals first
      | (obtain ⟨B, Γ', Θ', -, hlat, p', hh', -, -⟩ := Hs
         exact ⟨Γ', p', hlat.1, hh', fun v h => by cases h⟩)
      | (obtain ⟨Γ', p', he, hh', hret⟩ := Hs
         exact ⟨Γ', p', he, hh', fun v' h => by cases h; exact hret⟩)
      | (rcases Hs with hab | ⟨Γ', p', he, hh'⟩
         · exact absurd hab hna
         · exact ⟨Γ', p', he, hh', fun v h => by cases h⟩)
  obtain ⟨Γ', p', hext, hh', hret⟩ := core
  exact ⟨Γ', p1, p', act_exit hcs hps hext hh' hret, trivial⟩


/-- The value slice of node `n` in memory `M`: a leaf (tag 1) or a branch (tag 3). -/
def ValOf (M : Mem) (n vp vl : BitVec 64) : Prop :=
  (rd M n = 1 ∧ vp = rd M (n + 48) ∧ vl = rd M (n + 56)) ∨
  (rd M n ≠ 0 ∧ rd M n ≠ 1 ∧ rd M n ≠ 2 ∧ vp = rd M (n + 160) ∧ vl = rd M (n + 168))

/-- Value slices are empty or inside the allocated heap `[heapBase, hp)`. -/
def ValBd (M : Mem) (Nd : BitVec 64 → Prop) (hp : Nat) : Prop :=
  ∀ n vp vl, Nd n → ValOf M n vp vl → vl = 0 ∨ (heapBase ≤ vp.toNat ∧ vp.toNat + vl.toNat ≤ hp)

/-- The nibble scratch `mpt_nib_scratch` (64 bytes) is outside every node. -/
def NibSep (s : State σ) (Nd : BitVec 64 → Prop) : Prop :=
  ∃ O : BitVec 64, gword s (nm "mpt_nib_scratch") = some O ∧ O.toNat % 8 = 0 ∧
    heapBase ≤ O.toNat ∧ O.toNat + 64 ≤ heapEnd ∧
    ∀ a, Nd a → a.toNat + Spec.Mpt.nsz (rd s.memory a) ≤ O.toNat ∨ O.toNat + 64 ≤ a.toNat

/-- **What a closed node set `Nd` of the entry state `s` provides** (all of it follows from `G`, the
staged value hook and the staged typing of `ws + 24` for `Nd := NdOf Γ`, `bufS_of_locW`): the
nodes are closed (`NdClosed`), the state-root slot is null or a node, value slices are
heap-bounded, and the trie facts of the cost lane (`TrieOK`: node shapes below `hp`, disjoint
nodes, nodes disjoint from the keccak buffers, value first cells allocated) plus `NibSep`. -/
def NdPrem (s : State σ) (Nd : BitVec 64 → Prop) : Prop :=
  NdClosed s.memory Nd ∧
  (∀ wp, gword s (nm "ws") = some wp → s.memaddrs (wp + 24) → NullOrNd Nd (rd s.memory (wp + 24))) ∧
  (∃ p, ptrsOf s = some p ∧ Spec.Mpt.TrieOK s Nd p.hp ∧ ValBd s.memory Nd p.hp) ∧ NibSep s Nd

/-- **The located post of `ws_storage_root_of`**, in the entry state `s` and the exit state `t`:
for every node set satisfying `NdPrem s`, the root is `empty_trie_root`'s word, or a 32-byte window
of the value slice of such a node. -/
def LocW (s t : State σ) (w : BitVec 64) : Prop :=
  ∀ Nd : BitVec 64 → Prop, NdPrem s Nd →
    gword t (nm "empty_trie_root") = some w ∨
      ∃ n vp vl, Nd n ∧ ValOf s.memory n vp vl ∧ vp.toNat ≤ w.toNat ∧ w.toNat + 32 ≤ vp.toNat + vl.toNat

def RootLoc (σ : Type) : Prop :=
  FunSpec σ guestCtx (nm "ws_storage_root_of")
    (fun _ s r t => ∀ q, ptrsOf s = some q → q.Ordered → ∀ w,
      r = .returned (.val (.word w)) → LocW s t w)

/-- The staged hypotheses. -/
structure Staged (σ : Type) (H : Hooks σ) (tV : Nat) : Prop where
  hV : VTy tV
  hNV : ∀ (Γ : Gam) (s : State σ), G guestC H Γ s → ∀ o ∈ Γ, NVal tV Γ s o
  hGT : guestC.GT.lookup (nm "ws") = some (.nptr tWSR)
  hWS24 : ∀ (Γ : Gam) (s : State σ), G guestC H Γ s → ∀ o ∈ Γ, o.ty = tWSR →
    Fits Γ Types.nodeU (rd s.memory (o.base + 24))

/-- `NdPrem` and `LocW` read only the memory, `memaddrs` and globals of the entry state. -/
theorem ndPrem_congr {s s' : State σ} (hm : s'.memory = s.memory) (hd : s'.memaddrs = s.memaddrs)
    (hg : s'.globals = s.globals) {Nd : BitVec 64 → Prop} (h : NdPrem s' Nd) : NdPrem s Nd := by
  have e1 : ∀ k, gword s' k = gword s k := fun k => by unfold gword; rw [hg]
  have e2 : ptrsOf s' = ptrsOf s := by unfold ptrsOf; rw [e1, e1, e1]
  unfold NdPrem NibSep Spec.Mpt.TrieOK Spec.Mpt.NdShape Spec.Mpt.NdDisj Spec.Mpt.KBSep
    Spec.Mpt.ValSep Spec.Mpt.ValOK Spec.Mpt.KBuf ValBd at h ⊢
  simp only [hm, hd, e1, e2] at h
  exact h

theorem locW_congr {s s' t t' : State σ} {w : BitVec 64} (hm : s'.memory = s.memory)
    (hd : s'.memaddrs = s.memaddrs) (hg : s'.globals = s.globals) (hg' : t'.globals = t.globals)
    (h : LocW s t w) : LocW s' t' w := by
  intro Nd hN
  have e2 : gword t' (nm "empty_trie_root") = gword t (nm "empty_trie_root") := by
    unfold gword; rw [hg']
  rcases h Nd (ndPrem_congr hm hd hg hN) with h | ⟨n, vp, vl, h1, h2, h3, h4⟩
  · exact Or.inl (by rw [e2]; exact h)
  · exact Or.inr ⟨n, vp, vl, h1, by rw [hm]; exact h2, h3, h4⟩

/-- `n` bytes at `b` are all `scalar` cells of `Γ` objects (a `BufOK` without the temporary case). -/
def BufS (C : Cfg) (Γ : Gam) (b n : Nat) : Prop := ∀ a, Overlap b n a → SCell C Γ a

theorem bufOK_of_bufS {C : Cfg} {Γ : Gam} {p : Ptrs} {b n : Nat} (h : BufS C Γ b n) :
    BufOK C Γ p b n := fun a ha => Or.inl (h a ha)

theorem bufS_of_vIn {H : Hooks σ} {Γ : Gam} {s : State σ} (hG : G guestC H Γ s) {p : Ptrs}
    (hp : ptrsOf s = some p) {tV : Nat} (hV : VTy tV) {vp vl r : BitVec 64} {n : Nat}
    (hv : VIn tV Γ vp vl) (h1 : vp.toNat ≤ r.toNat) (h2 : r.toNat + n ≤ vp.toNat + vl.toNat)
    (hn : 0 < n) : BufS guestC Γ r.toNat n := by
  have hvl : vl ≠ 0 := by
    rintro rfl
    simp at h2
    omega
  rcases hv with h | ⟨x, hx, hxt, hx1, hx2⟩
  · exact absurd h hvl
  have hG0 := hG
  obtain ⟨p', hp', hord, hL, -⟩ := hG0
  rw [hp] at hp'
  cases hp'
  obtain ⟨hal, hsz8, -, -, hlive⟩ := hL.1 x hx
  rw [hxt, hV.heap] at hlive
  have hE : p.hp ≤ heapEnd := hord.2.1
  have hE2 : heapEnd < 2 ^ 62 := by decide
  intro a ⟨ha8, ha1, ha2⟩
  unfold Obj.lo Obj.hi at *
  obtain ⟨hl1, hl2⟩ := hlive
  have hxa : x.base.toNat ≤ a.toNat := by omega
  refine ⟨x, hx, (a.toNat - x.base.toNat) / 8, ?_, ?_, ?_⟩
  · unfold Obj.HasSlot; omega
  · rw [hxt]; exact hV.scalar _
  · apply BitVec.eq_of_toNat_eq
    unfold Obj.cell
    rw [Spec.Inv.add_ofNat_toNat (by omega)]
    omega

theorem bufS_empty_trie_root {H : Hooks σ} {Γ : Gam} {s : State σ} (hG : G guestC H Γ s)
    {p : Ptrs} (hp : ptrsOf s = some p) {w : BitVec 64}
    (hw : gword s (nm "empty_trie_root") = some w) : BufS guestC Γ w.toNat 32 := by
  have hG0 := hG
  obtain ⟨p', hp', hord, hL, -, -, hGl, -⟩ := hG0
  rw [hp] at hp'
  cases hp'
  obtain ⟨v, hv, x, hx, hb, hxt⟩ := hGl (nm "empty_trie_root") _ Types.gt_empty_trie_root
  rw [hw] at hv
  cases hv
  obtain ⟨hal, hsz8, -, hmin, hlive⟩ := hL.1 x hx
  have hreg : (guestC.ty Types.tB32).region = .heap := rfl
  rw [hxt, hreg] at hlive
  rw [hxt] at hmin
  have hmin32 : 32 ≤ (guestC.ty Types.tB32).minSz := by decide
  have hE : p.hp ≤ heapEnd := hord.2.1
  have hE2 : heapEnd < 2 ^ 62 := by decide
  intro a ⟨ha8, ha1, ha2⟩
  unfold Obj.lo at *
  obtain ⟨hl1, hl2⟩ := hlive
  rw [← hb] at ha1 ha2
  have hxa : x.base.toNat ≤ a.toNat := by omega
  refine ⟨x, hx, (a.toNat - x.base.toNat) / 8, ?_, ?_, ?_⟩
  · unfold Obj.HasSlot; omega
  · rw [hxt]
    show Types.b32Ty.slot _ = .scalar
    unfold TyD.slot; simp [Types.b32Ty]
  · apply BitVec.eq_of_toNat_eq
    unfold Obj.cell
    rw [Spec.Inv.add_ofNat_toNat (by omega)]
    omega

/-- A `Γ` node with a value slice has a `VIn` value. -/
theorem valOf_vIn {H : Hooks σ} {tV : Nat} (hS : Staged σ H tV) {Γ : Gam} {s : State σ}
    (hGs : G guestC H Γ s) {n vp vl : BitVec 64} (hn : NdOf Γ n) (hv : ValOf s.memory n vp vl) :
    VIn tV Γ vp vl := by
  obtain ⟨o, ho, rfl, ht⟩ := hn
  obtain ⟨-, -, -, -, -, hk⟩ := Band.node_facts hGs ho ht
  have hN := hS.hNV Γ s hGs o ho
  rcases hk with ⟨-, hr, -⟩ | ⟨e, hr, -⟩ | ⟨-, hr, -⟩ | ⟨e, hr, -⟩
  · rcases hv with ⟨h1, -⟩ | ⟨h0, -⟩
    · rw [hr] at h1; exact absurd h1 (by decide)
    · exact absurd hr h0
  · rcases hv with ⟨-, rfl, rfl⟩ | ⟨-, h1, -⟩
    · exact hN.1 e
    · exact absurd hr h1
  · rcases hv with ⟨h1, -⟩ | ⟨-, -, h2, -⟩
    · rw [hr] at h1; exact absurd h1 (by decide)
    · exact absurd hr h2
  · rcases hv with ⟨h1, -⟩ | ⟨-, -, -, rfl, rfl⟩
    · rw [hr] at h1; exact absurd h1 (by decide)
    · exact hN.2 e

/-- A nonempty `VIn` value lies in the live heap. -/
theorem vIn_bd {H : Hooks σ} {tV : Nat} (hV : VTy tV) {Γ : Gam} {s : State σ}
    (hGs : G guestC H Γ s) {p : Ptrs} (hp : ptrsOf s = some p) {vp vl : BitVec 64}
    (hv : VIn tV Γ vp vl) :
    vl = 0 ∨ (heapBase ≤ vp.toNat ∧ vp.toNat + vl.toNat ≤ p.hp) := by
  rcases hv with h | ⟨x, hx, hxt, hx1, hx2⟩
  · exact Or.inl h
  · obtain ⟨p', hp', hord, hL, -⟩ := id hGs
    rw [hp] at hp'
    cases hp'
    obtain ⟨-, -, -, -, hlive⟩ := hL.1 x hx
    rw [hxt, hV.heap] at hlive
    unfold Obj.lo Obj.hi at *
    obtain ⟨hl1, hl2⟩ := hlive
    exact Or.inr ⟨by omega, by omega⟩

/-- `mpt_nib_scratch` is outside every node of `Γ`. -/
theorem nibSep_of_G {H : Hooks σ} {Γ : Gam} {s : State σ} (hGs : G guestC H Γ s) :
    NibSep s (NdOf Γ) := by
  have hG0 := hGs
  obtain ⟨p, hp, hord, hL, -, -, hGl, -⟩ := hG0
  obtain ⟨v, hv, x, hx, hb, hxt⟩ := hGl (nm "mpt_nib_scratch") _ Types.gt_mpt_nib_scratch
  obtain ⟨hal, hsz8, -, hmin, hlive⟩ := hL.1 x hx
  have hreg : (guestC.ty Types.tB64).region = .heap := rfl
  rw [hxt, hreg] at hlive
  rw [hxt] at hmin
  obtain ⟨hl1, hl2⟩ := hlive
  have hmin64 : 64 ≤ (guestC.ty Types.tB64).minSz := by decide
  have hE : p.hp ≤ heapEnd := hord.2.1
  have hE2 : heapEnd < 2 ^ 62 := by decide
  refine ⟨v, hv, ?_, ?_, ?_, ?_⟩
  · rw [← hb]; exact hal
  · rw [← hb]; unfold Obj.lo at hl1; exact hl1
  · rw [← hb]; unfold Obj.lo at *; omega
  · rintro a ⟨o, ho, rfl, hot⟩
    have hne : x.ty ≠ o.ty := by
      rw [hxt]
      intro e
      have : Types.tB64 ∈ Band.nodeTys := e ▸ hot
      simp [Band.nodeTys, Types.tB64, Types.tNHASHED, Types.tNLEAF, Types.tNEXT, Types.tNBRANCH] at this
    have hxo : x ≠ o := fun e => hne (by rw [e])
    have hsz := Band.nsz_le_size hGs ho hot
    rcases MemSafe.layout_disj hL hx ho hxo with h | h
    · right
      unfold Obj.hi Obj.lo at *
      rw [← hb]; omega
    · left
      unfold Obj.hi Obj.lo at *
      rw [← hb]; omega

theorem bufS_of_locW {H : Hooks σ} {tV : Nat} (hS : Staged σ H tV) {Γ Γ' : Gam} {s t : State σ}
    {q : Ptrs} (hGs : G guestC H Γ s) (hext : Ext Γ Γ') (hGt : G guestC H Γ' t)
    (hq : ptrsOf t = some q) (hns : ∀ x, s.memaddrs x → heapBase ≤ x.toNat) {w : BitVec 64}
    (hl : LocW s t w) : BufS guestC Γ' w.toNat 32 := by
  have hroot : ∀ wp, gword s (nm "ws") = some wp → s.memaddrs (wp + 24) →
      NullOrNd (NdOf Γ) (rd s.memory (wp + 24)) := by
    intro wp hwp hm
    have hG0 := hGs
    obtain ⟨p0, hp0, hord, hL, -, -, hGl, -⟩ := hG0
    obtain ⟨v, hv, hf⟩ := hGl (nm "ws") _ hS.hGT
    rw [hwp] at hv
    cases hv
    rcases hf with hnull | ⟨o, ho, hb, ht⟩
    · exfalso
      have h1 := hns _ hm
      have h2 : (wp + 24).toNat = wp.toNat + 24 := by
        have := wp.isLt
        unfold nullMax at hnull
        exact Spec.Inv.add_ofNat_toNat (B := wp) (j := 24) (by omega)
      unfold nullMax at hnull
      unfold heapBase at h1
      omega
    · have := hS.hWS24 Γ s hGs o ho ht
      rw [hb] at this
      exact Band.nullOrNd_of_fits this
  have hPrem : NdPrem s (NdOf Γ) := by
    refine ⟨Band.ndClosed_of_G hGs, hroot, ?_, nibSep_of_G hGs⟩
    obtain ⟨p, hp, -⟩ := id hGs
    exact ⟨p, hp, Band4.trieOK_of_nval hGs hS.hV (hS.hNV Γ s hGs) hp,
      fun n vp vl hn hv => vIn_bd hS.hV hGs hp (valOf_vIn hS hGs hn hv)⟩
  rcases hl (NdOf Γ) hPrem with h | ⟨n, vp, vl, hn, hv, h1, h2⟩
  · exact bufS_empty_trie_root hGt hq h
  · exact bufS_of_vIn hGt hq hS.hV (Band4.vIn_ext hext (valOf_vIn hS hGs hn hv)) h1 h2
      (by norm_num)


#print axioms InitECandidate.Solver.MemSafe.St2.csumm_of_pre_caps
#print axioms InitECandidate.Solver.MemSafe.St2.bufS_of_locW
