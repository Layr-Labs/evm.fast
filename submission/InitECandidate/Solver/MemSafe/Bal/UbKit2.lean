import InitECandidate.Solver.MemSafe.Bal.UbKit
import InitECandidate.Solver.MemSafe.Frames.GChkJL
import InitECandidate.Solver.MemSafe.Frames.SCGuestJL

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option linter.unusedSectionVars false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Bal
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.HtabEntries InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Frames

variable {σ : Type}

/-! ## The footprint of `update_builder_from_tx` -/

def gcSig : Sig := ⟨[.any, .any], [], [], true⟩

def gcCaps : List Cap :=
  [⟨nm "sk_buf", 24, [], false⟩, ⟨nm "*", 10, [], true⟩, ⟨nm "*", 14, [], true⟩, ⟨nm "*", 11, [], true⟩,
    ⟨nm "*", 12, [], true⟩, ⟨nm "*", 42, [], true⟩, ⟨nm "*", 43, [], true⟩, ⟨nm "*", 44, [], true⟩,
    ⟨nm "*", 45, [], true⟩, ⟨nm "*", 55, [], true⟩, ⟨nm "*", 65, [], true⟩, ⟨nm "*", 66, [], true⟩,
    ⟨nm "*", 67, [], true⟩, ⟨nm "*", 68, [], true⟩, ⟨nm "*", 69, [], true⟩, ⟨nm "*", 70, [], true⟩,
    ⟨nm "*", 71, [], true⟩]

theorem gc_mem : (nm "get_code", gcSig, gcCaps) ∈ ShardsJL.tab26 := by decide +kernel

theorem gc_cs : CSumm σ guestCtx guestC (guestHooksR (σ := σ)) (nm "get_code") gcSig gcCaps :=
  tabJL_guestR _ _ _ gc_mem

def ubc : List Cap := balCaps ++ idc ++ isc ++ gcCaps ++ [laCap]

theorem ubc_ks : ∀ c ∈ ubc, c.ks = [] := by decide +kernel

theorem ubc_sub_bal : ∀ c ∈ balCaps, c ∈ ubc := fun c hc => by simp [ubc, hc]
theorem ubc_sub_idc : ∀ c ∈ idc, c ∈ ubc := fun c hc => by simp [ubc, hc]
theorem ubc_sub_isc : ∀ c ∈ isc, c ∈ ubc := fun c hc => by simp [ubc, hc]
theorem ubc_sub_gc : ∀ c ∈ gcCaps, c ∈ ubc := fun c hc => by simp [ubc, hc]
theorem ubc_la : laCap ∈ ubc := by simp [ubc]

theorem capPW_mono {cs cs' : List Cap} (h : ∀ c ∈ cs, c ∈ cs') {s : State σ} {Γ : Gam} {a : BitVec 64}
    (hp : CapPW cs s Γ a) : CapPW cs' s Γ a := by
  obtain ⟨c, hc, hh⟩ := hp
  exact ⟨c, h c hc, hh⟩

theorem capBack' {Γ0 Γ : Gam} {p0 p : Ptrs} (hord0 : p0.Ordered) (hord : p.Ordered)
    (hm : p0.Mono p) (hL0 : Layout guestC p0 Γ0) (hL : Layout guestC p Γ)
    (hnf : NewFresh Γ0 Γ p0 p) {cs cs0 : List Cap}
    (hcs : ∀ c ∈ cs, c.ks = [] ∧ (c.all = true → ∃ c0 ∈ cs0, c0.all = true ∧ ∀ t, AllTy c t → AllTy c0 t))
    {s s0 : State σ} {a : BitVec 64} (hpc : ProtCell guestC Γ a) (hpw : CapPW cs s Γ a) :
    (ProtCell guestC Γ0 a ∧ CapPW cs0 s0 Γ0 a) ∨ ¬ p0.Allocated a.toNat := by
  obtain ⟨c, hc, ⟨e, -, k, hk, -⟩ | ⟨hall, e, he, hty, k, hks, rfl⟩⟩ := hpw
  · rw [(hcs c hc).1] at hk; cases hk
  obtain ⟨c0, hc0, hall0, hty0⟩ := (hcs c hc).2 hall
  obtain ⟨o', ho', k', hk', hprot, he'⟩ := hpc
  obtain ⟨rfl, rfl⟩ := cell_inj hord hL he ho' hks hk' he'
  obtain ⟨hcn, -⟩ := cell_toNat hord hL he hks
  have hin1 : e.lo ≤ (e.cell k).toNat := by rw [hcn]; omega
  have hin2 : (e.cell k).toNat < e.hi := by
    rw [hcn]; unfold Obj.HasSlot at hks; unfold Obj.hi Obj.lo; omega
  rcases hnf e he _ hin1 hin2 with ⟨o0, ho0, hb, ht, hl, hh⟩ | hf
  · left
    have hk0 : o0.HasSlot k := by
      unfold Obj.HasSlot
      rw [hcn] at hl hh
      simp only [Obj.lo, Obj.hi, hb] at hl hh
      unfold Obj.HasSlot at hks
      have h8 := (hL0.1 o0 ho0).2.1
      have h8' := (hL.1 e he).2.1
      omega
    have hc' : e.cell k = o0.cell k := by unfold Obj.cell; rw [hb]
    refine ⟨⟨o0, ho0, k, hk0, by rw [ht]; exact hprot, hc'⟩, c0, hc0, Or.inr ⟨hall0, o0, ho0,
      by rw [ht]; exact hty0 _ hty, k, hk0, hc'⟩⟩
  · exact Or.inr (Struct.fresh_notAlloc hord0 hord hm hf)

/-- A callee whose capabilities are among `ubc`. -/
theorem cpw_sub {cs' : List Cap} (hs : ∀ c ∈ cs', c ∈ ubc) {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {Γ : Gam}
    {t s' : State σ}
    (hT : Struct.Trk guestC (guestHooksR (σ := σ)) Γ0 s0 p0 (cpw ubc Γ0 s0 p0) Γ t)
    (hord0 : p0.Ordered) (hL0 : Layout guestC p0 Γ0) :
    ∀ y, ProtCell guestC Γ y → CapPW cs' s' Γ y → cpw ubc Γ0 s0 p0 y := by
  obtain ⟨pT, hpT, hmT, hxT, hnfT, hGT, -⟩ := hT
  obtain ⟨qT, hqT, hordT, hLayT, -⟩ := hGT
  rw [hpT] at hqT
  cases hqT
  intro y hpc hpw
  rcases capBack' hord0 hordT hmT hL0 hLayT hnfT (cs := cs') (cs0 := ubc)
    (fun c hc => ⟨ubc_ks c (hs c hc), fun hall => ⟨c, hs c hc, hall, fun _ h => h⟩⟩) hpc hpw with ⟨h1, h2⟩ | h
  · exact Or.inl ⟨h1, Or.inl h2⟩
  · exact Or.inr h

/-- The list cells of the BAL mutators. -/
theorem cpw_la {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {Γ : Gam} {t : State σ}
    (hT : Struct.Trk guestC (guestHooksR (σ := σ)) Γ0 s0 p0 (cpw ubc Γ0 s0 p0) Γ t)
    (hord0 : p0.Ordered) (hL0 : Layout guestC p0 Γ0) :
    ∀ y, ProtCell guestC Γ y → Inc.LaPW Γ y → cpw ubc Γ0 s0 p0 y := by
  intro y hpc hla
  rcases pw_of_la hord0 hL0 hT hpc hla with ⟨h1, h2 | h2⟩ | h
  · exact Or.inl ⟨h1, Or.inl (capPW_mono ubc_sub_bal h2)⟩
  · exact Or.inl ⟨h1, Or.inr ⟨ubc_la, h2⟩⟩
  · exact Or.inr h

theorem cpw_bal {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {Γ : Gam} {t s' : State σ}
    (hT : Struct.Trk guestC (guestHooksR (σ := σ)) Γ0 s0 p0 (cpw ubc Γ0 s0 p0) Γ t)
    (hord0 : p0.Ordered) (hL0 : Layout guestC p0 Γ0) :
    ∀ y, ProtCell guestC Γ y → BalPW s' Γ y → cpw ubc Γ0 s0 p0 y := by
  intro y hpc h
  rcases h with h | h
  · exact cpw_sub ubc_sub_bal hT hord0 hL0 y hpc h
  · exact cpw_la hT hord0 hL0 y hpc h

/-- The final footprint: table cells of `ubc`, or list cells. -/
def UbPW (s : State σ) (Γ : Gam) (a : BitVec 64) : Prop := CapPW ubc s Γ a ∨ Inc.LaPW Γ a

theorem trk_cpw_la {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {Γ : Gam} {t : State σ}
    (hT : Struct.Trk guestC (guestHooksR (σ := σ)) Γ0 s0 p0 (cpw ubc Γ0 s0 p0) Γ t) :
    Struct.Trk guestC (guestHooksR (σ := σ)) Γ0 s0 p0
      (fun a => ProtCell guestC Γ0 a ∧ UbPW s0 Γ0 a ∨ ¬ p0.Allocated a.toNat) Γ t := by
  obtain ⟨p, hp, hm, hx, hnf, hG, hmod, hpg, hd, hbe⟩ := hT
  refine ⟨p, hp, hm, hx, hnf, hG, hmod.mono fun a ha => ?_, hpg, hd, hbe⟩
  rcases ha with ha | ha | ha
  · exact Or.inl ha
  · exact Or.inr (Or.inl ha)
  · refine Or.inr (Or.inr ?_)
    rcases ha with ⟨h1, h2 | ⟨-, h3⟩⟩ | h
    · exact Or.inl ⟨h1, Or.inl h2⟩
    · exact Or.inl ⟨h1, Or.inr h3⟩
    · exact Or.inr h

end InitECandidate.Solver.MemSafe.Bal
