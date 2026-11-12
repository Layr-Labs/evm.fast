import InitECandidate.Solver.MemSafe.Wg.CostBase
import InitECandidate.Solver.MemSafe.Ini.SiFinal
import InitECandidate.Solver.MemSafe.Ra.AttHyp
import InitECandidate.Solver.Band.Dec

/-!
# Sp: the cost of `state_init` (`HypSiCost`)

`state_init` has table costs for `alloc` and `htab_new`; its only conditional callee is `decode_witness_to_mpt`, whose cost is
`Band.dwtm_costP` under `Band.DwPre` (the allocator ordered and the node DB `NdbW` below `heap_ptr`). The walk carries `SiJ`
from the entry through `ws = alloc(40)` and the three stores into `ws` to the call: the node DB of the entry is still `NdbW`
(the stores land in the fresh block above the entry `heap_ptr`, and the allocator only grows). The suffix after the call has the
table analyzer's bound `costFin = 113`.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Sp
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Wg InitECandidate.Solver.MemSafe.Att
open InitECandidate.Solver.Spec.Mpt.Leaves (NdbW InH)

variable {σ : Type}

abbrev St (σ : Type) := PanSemStateFiniteExact 64 σ

theorem inH_mono {H H' : Nat} {a : BitVec 64} (h : InH H a) (hle : H ≤ H') : InH H' a :=
  ⟨h.1, by have := h.2; omega⟩

/-- A node DB for `nodedb_lookup` stays one when the heap bound grows. -/
theorem ndbW_mono {T : BitVec 64} {H H' : Nat} {M : Mem} (h : NdbW T H M) (hle : H ≤ H') : NdbW T H' M := by
  obtain ⟨h0, h40, h56, S, hr, hS⟩ := h
  refine ⟨inH_mono h0 hle, inH_mono h40 hle, inH_mono h56 hle, S, hr, fun n hn hn0 => ?_⟩
  obtain ⟨k24, k8, hleaf, hint⟩ := hS n hn hn0
  refine ⟨inH_mono k24 hle, inH_mono k8 hle, fun hk => ?_, fun hk => ?_⟩
  · obtain ⟨a1, a2, a3, a4⟩ := hleaf hk
    exact ⟨inH_mono a1 hle, inH_mono a2 hle, a3, by omega⟩
  · obtain ⟨a1, a2, a3⟩ := hint hk
    exact ⟨inH_mono a1 hle, a2, a3⟩

/-- The state of the walk of `state_init` from the entry `s0` to the call of `decode_witness_to_mpt`. -/
def SiJ (db : BitVec 64) (s0 t : St σ) : Prop :=
  ∃ (q q' : Ptrs) (W : BitVec 64), ptrsOf t = some q' ∧ q'.Ordered ∧ q.Mono q' ∧ NdbW db q.hp s0.memory ∧
    t.globals.lookup (nm "ws") = some (.val (.word W)) ∧ W.toNat + 40 ≤ 2 ^ 64 ∧
    (∀ x : Nat, W.toNat ≤ x → x < W.toNat + 40 → ¬ q.Allocated x) ∧
    (∀ a : BitVec 64, t.memory a ≠ s0.memory a → W.toNat ≤ a.toNat ∧ a.toNat < W.toNat + 40) ∧ t.locals = s0.locals

theorem hoare_si_store {db : BitVec 64} {s0 : St σ} {k : Nat} (hk : k < 40) {e : ExpHOL 64} {V : BitVec 64}
    (he : ∀ t : St σ, SiJ db s0 t → ev t e = some (.val (.word V))) :
    Hoare σ guestCtx (SiJ db s0) (.store (.op .add [gv (nm "ws"), cw k]) e) (fun r t => r = none ∧ SiJ db s0 t) := by
  refine hoare_store fun t _ hJ w v mem hw hv hmem => ?_
  obtain ⟨q, q', W, hp, ho, hm, hn, hW, hWn, hfr, hdiff, hloc⟩ := hJ
  have ew : ev t (.op .add [gv (nm "ws"), cw k]) = some (.val (.word (W + BitVec.ofNat 64 k))) :=
    ev_add2 (show ev t (gv (nm "ws")) = _ from hW) (ev_cw t k)
  rw [ew] at hw
  cases hw
  rw [he t ⟨q, q', W, hp, ho, hm, hn, hW, hWn, hfr, hdiff, hloc⟩] at hv
  cases hv
  simp only [flattenHOL] at hmem
  obtain ⟨-, rfl⟩ := stores_one hmem
  refine ⟨rfl, q, q', W, hp, ho, hm, hn, hW, hWn, hfr, fun a ha => ?_, hloc⟩
  simp only at ha
  by_cases e : a = W + BitVec.ofNat 64 k
  · subst e
    have : (W + BitVec.ofNat 64 k).toNat = W.toNat + k := by
      rw [BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega : k < 2 ^ 64),
        Nat.mod_eq_of_lt (by omega)]
    omega
  · rw [if_neg e] at ha
    exact hdiff a ha

theorem hoare_si_alloc (hX : guestCtx.code.lookup = guestCode) {db : BitVec 64} {s0 : St σ} {q0 : Ptrs}
    (hnd : NdbW db q0.hp s0.memory) (hp0 : ptrsOf s0 = some q0) (hord : q0.Ordered) :
    Hoare σ guestCtx (fun t => t = s0) (.call (some (some (.global, nm "ws"), none)) (nm "alloc") [cw 40])
      (fun r t => r = none → SiJ db s0 t) := by
  refine hoare_callA (allocSpec_alloc (σ := σ) hX) fun s hs hP vs hvs callee v st hR hst hvalid => ?_
  subst hP
  rw [evs_cons (ev_cw s 40) evs_nil] at hvs
  cases hvs
  have hps : ptrsOf (callEntryStateHOLFinite s callee) = some q0 :=
    (AllocImpl.ptrsOf_congr (s := s) (t := callEntryStateHOLFinite s callee) rfl).trans hp0
  obtain ⟨hmem, hglob, p', hp', hordp, hmono, hvret⟩ := hR (by simp [Good]) _ q0 rfl hps hord
  obtain ⟨W, hvW, hW8, hlive, hfresh⟩ := hvret v rfl
  subst hvW
  intro _
  have hn40 : (BitVec.ofNat 64 40).toNat = 40 := by decide
  rw [hn40] at hlive hfresh
  have hgl : ∀ g, g ≠ nm "ws" →
      (setKvarHOLFinite .global (nm "ws") (.val (.word W)) { st with locals := s.locals }).globals.lookup g =
        st.globals.lookup g := fun g hg => HtabEntries.setG_ne (s := { st with locals := s.locals }) hg
  have hpt : ptrsOf (setKvarHOLFinite .global (nm "ws") (.val (.word W)) { st with locals := s.locals }) =
      some p' := by
    unfold ptrsOf gword
    rw [hgl gHeap (by decide), hgl gFrame (by decide), hgl gScratch (by decide)]
    exact hp'
  refine ⟨q0, p', W, hpt, hordp, hmono, hnd, HtabEntries.setG_self, ?_, hfresh, fun a ha => ?_, rfl⟩
  · obtain ⟨hl1, hl2⟩ := hlive
    obtain ⟨-, d2, -⟩ := hordp
    have : heapEnd < 2 ^ 64 := by decide
    omega
  · exact absurd (congrFun hmem a) ha


/-- The suffix after the call of `decode_witness_to_mpt`. -/
def siK : ProgHOL 64 := .seq (.store (.op .add [gv (nm "ws"), cw 24]) (lv (nm "root")))
  (.decCall (nm "t") .one (nm "htab_new") [cw 32, cw 64] Ini.siTail)

theorem costFin_siK : costFin siK = some 113 := by decide_cbv

/-- The bound, as the walk produces it. -/
def bSiE : Nat := (1 + 2 + 0) + (0 + (0 + (0 + (1 + Band.dwtmB + 113))))

/-- **The cost of `state_init`.** -/
def bSi : Nat := 11995256898787295895331913460614438285804549968127

theorem bSiE_eq : bSiE = bSi := by decide

theorem hypSiCost : HypSiCost σ bSi := by
  have hX := (Rec.foldOK_guestR (σ := σ)).hX
  intro vs body callee rs hl s hs hpre0 hgood
  obtain ⟨hloc, Γ, p, hG, hp, -, -, -, p', hp', db, rt, cd, rfl, hND, -⟩ := hpre0
  obtain ⟨p2, hp2, hord, hL, -⟩ := id hG
  obtain rfl : p2 = p := Option.some.inj (hp2.symm.trans hp)
  rw [hX] at hl
  obtain ⟨rfl, -, hlen, hbind⟩ := lookupCode_gen Ini.code_si hl
  have hA : callee.lookup (nm "nodedb") = some (.val (.word db)) := (hbind 0 (by decide) (by simp)).1
  have hB : callee.lookup (nm "state_root") = some (.val (.word rt)) := (hbind 1 (by decide) (by simp)).1
  have hC : callee.lookup (nm "codedb") = some (.val (.word cd)) := (hbind 2 (by decide) (by simp)).1
  have hnd : NdbW db p2.hp s.memory := Wit.ndbW_of_ndbR hL hND
  have hev : ∀ (x : MlS) (V : BitVec 64), callee.lookup x = some (.val (.word V)) →
      ∀ t : St σ, SiJ db s t → ev t (lv x) = some (.val (.word V)) := by
    intro x V h t ht
    obtain ⟨-, -, -, -, -, -, -, -, -, -, -, hl⟩ := ht
    rw [ev_lv, hl, hloc]
    exact h
  have key : Inv.CostP σ guestCtx (fun t => t = s) Ini.siBody bSiE := by
    unfold Ini.siBody
    refine Inv.costP_seq (R := SiJ db s)
      (Inv.costP_of_cost (cost_call (fun _ _ _ _ hl' => ?_) (by intro _ _ _ _ h; cases h)))
      (hoare_si_alloc hX hnd hp hord) ?_
    · exact Wire.calleeCost_guest (f := nm "alloc") (B := 2) rfl _ _ _ _ hl'
    refine Inv.costP_seq (R := SiJ db s) (Inv.costP_of_cost (cost_store _ _))
      (hoare_post (hoare_si_store (k := 0) (by omega) (hev _ _ hA)) fun _ _ _ _ h _ => h.2) ?_
    refine Inv.costP_seq (R := SiJ db s) (Inv.costP_of_cost (cost_store _ _))
      (hoare_post (hoare_si_store (k := 8) (by omega) (hev _ _ hB)) fun _ _ _ _ h _ => h.2) ?_
    refine Inv.costP_seq (R := SiJ db s) (Inv.costP_of_cost (cost_store _ _))
      (hoare_post (hoare_si_store (k := 16) (by omega) (hev _ _ hC)) fun _ _ _ _ h _ => h.2) ?_
    refine Band.costP_decCall Band.dwtm_costP ?_ (funSpec_true _) ?_
    · intro t _ ht vs' hvs' callee'
      obtain ⟨v1, vs1, rfl, h1, hr1⟩ := evs_cons_inv hvs'
      obtain ⟨v2, vs2, rfl, h2, hr2⟩ := evs_cons_inv hr1
      rw [evs_nil] at hr2
      cases hr2
      rw [hev _ _ hA t ht] at h1
      rw [hev _ _ hB t ht] at h2
      cases h1
      cases h2
      obtain ⟨q, q', W, hpt, ho, hm, hn, hW, hWn, hfr, hdiff, hl⟩ := ht
      refine ⟨db, .val (.word rt), rfl, q', hpt, ho, ndbW_mono ?_ hm.1⟩
      refine Spec.Mpt.Leaves.wFrame_ndbW _ _ _ _ hn (fun a h1 h2 => ?_)
      by_contra hne
      obtain ⟨d1, d2⟩ := hdiff a hne
      exact hfr a.toNat d1 d2 (Or.inl ⟨h1, h2⟩)
    · intro _ _ _ _ _ _ _ _ _ _ _
      exact Inv.costP_of_cost (cost_guest_costA costFin_siK)
  have := key s hs rfl hgood
  rw [bSiE_eq] at this
  exact this

end InitECandidate.Solver.MemSafe.Sp

#print axioms InitECandidate.Solver.MemSafe.Sp.hypSiCost
