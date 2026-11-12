import InitECandidate.Solver.MemSafe.Rpg.Defs

/-!
# rpG: an activation with no writable EV slot keeps `GAS_LEFT`

`aAt s Γ p` is the entry activation of a `pre_*`-shaped function (no parameters, signature
`preSig`) with the capability-free EV capability `capE`, at an arbitrary state `s`.
`gas_same`: every state `t` with `Heap (aAt s Γ p) Γ' p' t` has the same `GAS_LEFT` as `s`.
-/

set_option autoImplicit false
set_option maxRecDepth 100000

namespace InitECandidate.Solver.MemSafe.Rpg
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types

variable {σ : Type} {X : Ctx 64} {H : Hooks σ}

/-- The word `GAS_LEFT` of the EV record at `e`, as a number. -/
def gasV (s : State σ) (e : BitVec 64) : Nat := (Frames.fld s.memory e 64).toNat

/-- The entry activation of a capability-free `pre_*` function at state `s`. -/
def aAt (H : Hooks σ) (s : State σ) (Γ : Gam) (p : Ptrs) : Act σ :=
  actOf guestC H Pre.preSig capE [] s Γ p

theorem capsOK_capE : capsOK guestC Pre.preSig capE = true := by decide

theorem argsOK_nil {Γ : Gam} {p : Ptrs} : ArgsOK guestC Γ p Pre.preSig.params [] :=
  ⟨rfl, fun i pt w hpt _ => by simp [Pre.preSig] at hpt⟩

theorem capSub_capE : capSub capE Pre.evCaps = true := by decide

/-- **`gas_same`.** -/
theorem gas_same {a : Act σ} (ha : ActOK a X) (hcaps : a.caps = capE)
    (hCb : a.Cb = guestC) (hpar : a.sg.params = []) (hL0 : Layout a.C a.p0 a.Γ0)
    {Γ : Gam} {p : Ptrs} {t : State σ} (hh : Heap a Γ p t) {e : BitVec 64}
    (hge : gword a.s0 Frames.nmEv = some e) :
    Frames.fld t.memory e 64 = Frames.fld a.s0.memory e 64 := by
  have hreq := ha.hreq
  rw [hcaps] at hreq
  obtain ⟨eo, heo, het, hgeo⟩ := hreq ⟨nm "ev", 0, [], false⟩ (by simp [capE]) (by decide)
  have hbase : eo.base = e := by
    have : gword a.s0 (nm "ev") = some e := hge
    rw [hgeo] at this
    exact Option.some.inj this
  have het0 : eo.ty = tEV := het
  have hty : (a.C.ty eo.ty) = guestC.ty tEV := by rw [het0, ha.hupg, hCb]; rfl
  have hm := ha.hmin0 eo heo
  rw [hty, ev_minSz] at hm
  have hs8 : eo.HasSlot 8 := by unfold Obj.HasSlot; omega
  have hmod := hh.2.2.2.2.2.1
  have hcell : Frames.fld t.memory e 64 = Frames.fld a.s0.memory e 64 := by
    have hx : (e + BitVec.ofNat 64 64) = eo.cell 8 := by
      unfold Obj.cell; rw [hbase]
    unfold Frames.fld rd
    rw [hx]
    rw [hmod (eo.cell 8) ?_]
    rintro (⟨o, ho, k, hk, hnp, hxo⟩ | harg | hna | ⟨-, c, hc, hcx⟩)
    · obtain ⟨rfl, rfl⟩ := cell_inj ha.hord0 hL0 ho heo hk hs8 hxo.symm
      apply hnp
      rw [hty]
      exact Types.ev_prot 8 (by simp)
    · rw [hpar] at harg
      obtain ⟨i, w, -, h⟩ := harg
      rcases h with ⟨n, hn, -⟩ | ⟨j, c, d, x, hj, -⟩
      · simp at hn
      · simp at hj
    · exact hna (Struct.cell_alloc ha.hord0 hL0 heo hs8)
    · rw [hcaps] at hc
      simp only [capE, List.mem_singleton] at hc
      subst hc
      rcases hcx with ⟨e', -, k, hk, -⟩ | ⟨hall, -⟩
      · simp at hk
      · cases hall
  exact hcell

end InitECandidate.Solver.MemSafe.Rpg

#print axioms InitECandidate.Solver.MemSafe.Rpg.gas_same
