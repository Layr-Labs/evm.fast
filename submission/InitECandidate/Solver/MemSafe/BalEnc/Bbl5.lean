import InitECandidate.Solver.MemSafe.BalEnc.Bbl4
import InitECandidate.Solver.MemSafe.Bal.Ub9

set_option autoImplicit false

/-!
# `build_block_access_list_rlp`, phase 1: infrastructure in the tracked (`Trk`) world

The footprint is `cpw bbc`, `bbc = balCaps ++ [laCap]` (the BAL tables and list cells).
-/

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option linter.unusedSectionVars false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.BalEnc
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.HtabEntries InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.MemSafe.Frames
open InitECandidate.Solver.MemSafe.Bal

variable {σ : Type}

def bbc : List Cap := balCaps ++ [laCap]

theorem bbc_ks : ∀ c ∈ bbc, c.ks = [] := by decide +kernel
theorem bbc_bal : ∀ c ∈ balCaps, c ∈ bbc := fun c hc => by simp [bbc, hc]
theorem bbc_la : laCap ∈ bbc := by simp [bbc]

theorem capPW_bbc {s : State σ} {Γ : Gam} {a : BitVec 64} (h : CapPW bbc s Γ a) : CapPW balCaps s Γ a := by
  obtain ⟨c, hc, hh⟩ := h
  simp only [bbc, List.mem_append, List.mem_singleton] at hc
  rcases hc with hc | rfl
  · exact ⟨c, hc, hh⟩
  · rcases hh with ⟨e, -, k, hk, -⟩ | ⟨hall, -⟩
    · simp [laCap] at hk
    · simp [laCap] at hall

theorem cpwB_sub {cs' : List Cap} (hs : ∀ c ∈ cs', c ∈ bbc) {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {Γ : Gam}
    {t s' : State σ}
    (hT : Struct.Trk guestC (guestHooksR (σ := σ)) Γ0 s0 p0 (cpw bbc Γ0 s0 p0) Γ t)
    (hord0 : p0.Ordered) (hL0 : Layout guestC p0 Γ0) :
    ∀ y, ProtCell guestC Γ y → CapPW cs' s' Γ y → cpw bbc Γ0 s0 p0 y := by
  obtain ⟨pT, hpT, hmT, hxT, hnfT, hGT, -⟩ := hT
  obtain ⟨qT, hqT, hordT, hLayT, -⟩ := hGT
  rw [hpT] at hqT
  cases hqT
  intro y hpc hpw
  rcases capBack' hord0 hordT hmT hL0 hLayT hnfT (cs := cs') (cs0 := bbc)
    (fun c hc => ⟨bbc_ks c (hs c hc), fun hall => ⟨c, hs c hc, hall, fun _ h => h⟩⟩) hpc hpw with ⟨h1, h2⟩ | h
  · exact Or.inl ⟨h1, Or.inl h2⟩
  · exact Or.inr h

theorem cpwB_la {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {Γ : Gam} {t : State σ}
    (hT : Struct.Trk guestC (guestHooksR (σ := σ)) Γ0 s0 p0 (cpw bbc Γ0 s0 p0) Γ t)
    (hord0 : p0.Ordered) (hL0 : Layout guestC p0 Γ0) :
    ∀ y, ProtCell guestC Γ y → Inc.LaPW Γ y → cpw bbc Γ0 s0 p0 y := by
  intro y hpc hla
  rcases pw_of_la hord0 hL0 hT hpc hla with ⟨h1, h2 | h2⟩ | h
  · exact Or.inl ⟨h1, Or.inl (capPW_mono bbc_bal h2)⟩
  · exact Or.inl ⟨h1, Or.inr ⟨bbc_la, h2⟩⟩
  · exact Or.inr h

theorem cpwB_bal {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {Γ : Gam} {t s' : State σ}
    (hT : Struct.Trk guestC (guestHooksR (σ := σ)) Γ0 s0 p0 (cpw bbc Γ0 s0 p0) Γ t)
    (hord0 : p0.Ordered) (hL0 : Layout guestC p0 Γ0) :
    ∀ y, ProtCell guestC Γ y → BalPW s' Γ y → cpw bbc Γ0 s0 p0 y := by
  intro y hpc h
  rcases h with h | h
  · exact cpwB_sub bbc_bal hT hord0 hL0 y hpc h
  · exact cpwB_la hT hord0 hL0 y hpc h

/-! ## Entry facts -/

structure BbEnt (Γ0 : Gam) (s0 : State σ) (p0 : Ptrs) : Prop where
  hord : p0.Ordered
  hL : Layout guestC p0 Γ0
  bs : GF (nm "bs") tBS Γ0 s0
  ba : GF (nm "bal_accounts") tHTd20 Γ0 s0

structure BbF (Γ : Gam) (t : State σ) : Prop where
  bs : GF (nm "bs") tBS Γ t
  ba : GF (nm "bal_accounts") tHTd20 Γ t

theorem bb_facts {cs : List Cap} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} (E : BbEnt Γ0 s0 p0) {Γ : Gam}
    {t : State σ} (h : IV cs Γ0 s0 p0 Γ t) : BbF Γ t := by
  have hx := Struct.trk_ext h.1
  have g4 : ∀ g ∈ bal4, t.globals.lookup g = s0.globals.lookup g := h.2
  exact ⟨gf_persist hx (g4 _ (by simp [bal4])) E.bs, gf_persist hx (g4 _ (by simp [bal4])) E.ba⟩

theorem BbF.balNN {Γ : Gam} {t : State σ} (F : BbF Γ t) : BalNN t Γ := nn_of_gf F.ba

/-- A pointer slot of the block state. -/
theorem bs_slot {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} (Ent : BbEnt Γ0 s0 p0) {cs : List Cap} {Γ : Gam} {t : State σ} (hIV : IV cs Γ0 s0 p0 Γ t)
    {k j th : Nat} (hj : j = 8 * k) (hsz : 8 * k + 8 ≤ 80) (hs : (guestC.ty tBS).slot k = .ptr th)
    {v : ValueHOL 64} (hv : ev t (Bal.ld1 (Bal.add2 (gE "bs") j)) = some v) :
    ∃ A : BitVec 64, v = .val (.word A) ∧ ∃ S ∈ Γ, S.base = A ∧ S.ty = th := by
  obtain ⟨w, hw, T, hT, hTb, hTt⟩ := (bb_facts Ent hIV).bs
  have hl := AllocImpl.lookup_of_gword hw
  have e1 : v = .val (.word (rd t.memory (w + BitVec.ofNat 64 j))) :=
    lp_ev_ld (ev_add2 (ev_gv hl) (ev_cw _ j)) hv
  have hG := Struct.trk_G hIV.1
  obtain ⟨q, hq, hord, hL, -⟩ := id hG
  have hmin := (hL.1 T hT).2.2.2.1
  rw [hTt] at hmin
  have hms : (guestC.ty tBS).minSz = 80 := by decide
  obtain ⟨O, hO, hOb, hOt⟩ := slot_ptr hG hT (k := k) (by omega) (by rw [hTt]; exact hs)
  refine ⟨_, e1, O, hO, ?_, hOt⟩
  rw [hOb, cell_eq_off T hj, hTb]

theorem srcKey_shift {Γ : Gam} {K : BitVec 64} {m th off n : Nat} (h : SrcKey Γ K m th)
    (hn : off + n ≤ m) (hpos : 0 < n) : SrcKey Γ (K + BitVec.ofNat 64 off) n th := by
  obtain ⟨h0, S, hS, hk, hne, hy⟩ := h
  have hK : K.toNat + m ≤ 2 ^ 64 := h0
  have e : (K + BitVec.ofNat 64 off).toNat = K.toNat + off := by
    rw [BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega : off < 2 ^ 64),
      Nat.mod_eq_of_lt (by omega)]
  refine ⟨by omega, S, hS, hk, hne, fun a h1 h2 => hy a (by omega) (by omega)⟩

end InitECandidate.Solver.MemSafe.BalEnc
