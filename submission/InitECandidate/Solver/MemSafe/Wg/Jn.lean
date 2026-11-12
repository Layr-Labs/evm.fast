import InitECandidate.Solver.MemSafe.Hooks.Rec
import InitECandidate.Solver.MemSafe.HtabEntries.JHooksG
import InitECandidate.Solver.MemSafe.Bal.GlobKit
import InitECandidate.Solver.MemSafe.Wg.Core

/-!
# Wg: `journal_n = 0` keeps `G` (the proof is F3's `Ptx.PtJn`, copied), and the walk step
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Wg
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (MlS)
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Hooks InitECandidate.Solver.MemSafe.HtabEntries
open InitECandidate.Solver.MemSafe.Frames
open InitECandidate.Solver.MemSafe.Eb
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type}

theorem hfm_ext {α β : Type} {a b : HolFiniteMapExact α β} (h : ∀ k, a.lookup k = b.lookup k) : a = b := by
  cases a; cases b
  simp only at h
  have := funext h
  subst this
  rfl

theorem setG_twice (u : State σ) (g : MlS) (v w : ValueHOL 64) :
    setKvarHOLFinite .global g v (setKvarHOLFinite .global g w u) = setKvarHOLFinite .global g v u := by
  show ({ u with globals := (u.globals.update (g, w)).update (g, v) } : State σ) = { u with globals := u.globals.update (g, v) }
  congr 1
  apply hfm_ext
  intro k
  by_cases hk : g = k
  · subst hk; simp [HolFiniteMapExact.update, FUPDATE]
  · simp [HolFiniteMapExact.update, FUPDATE, hk]

theorem setG_same (u : State σ) (g : MlS) (v : ValueHOL 64) (h : u.globals.lookup g = some v) :
    setKvarHOLFinite .global g v u = u := by
  show ({ u with globals := u.globals.update (g, v) } : State σ) = u
  congr 1
  apply hfm_ext
  intro k
  by_cases hk : g = k
  · subst hk; simp [HolFiniteMapExact.update, FUPDATE, h]
  · simp [HolFiniteMapExact.update, FUPDATE, hk]

theorem G_jn_zero_aux : ∀ (n : Nat) {Γ : Gam} {u : State σ}, G guestC (guestHooksR (σ := σ)) Γ u → ∀ J : BitVec 64,
    u.globals.lookup gJn = some (.val (.word J)) → J.toNat = n →
    G guestC (guestHooksR (σ := σ)) Γ (setKvarHOLFinite .global gJn (.val (.word 0)) u)
  | 0, Γ, u, hG, J, hJ, hn => by
      have hJ0 : J = 0 := BitVec.eq_of_toNat_eq (by simpa using hn)
      subst hJ0
      rw [setG_same u gJn _ hJ]; exact hG
  | n + 1, Γ, u, hG, J, hJ, hn => by
      have h1 : 1 ≤ J.toNat := by omega
      have hG' := G_jn_decG (H := guestHooksR (σ := σ)) jHooks_guestR hG hJ h1
      have hJ' : (setKvarHOLFinite .global gJn (.val (.word (J - BitVec.ofNat 64 1))) u).globals.lookup gJn =
          some (.val (.word (J - BitVec.ofNat 64 1))) := setG_self
      have hn' : (J - BitVec.ofNat 64 1).toNat = n := by
        rw [BitVec.toNat_sub]; simp; omega
      have := G_jn_zero_aux n hG' _ hJ' hn'
      rwa [setG_twice] at this

/-- **`journal_n = 0` keeps `G`.** -/
theorem G_jn_zero {Γ : Gam} {u : State σ} (hG : G guestC (guestHooksR (σ := σ)) Γ u) {J : BitVec 64}
    (hJ : u.globals.lookup gJn = some (.val (.word J))) :
    G guestC (guestHooksR (σ := σ)) Γ (setKvarHOLFinite .global gJn (.val (.word 0)) u) :=
  G_jn_zero_aux J.toNat hG J hJ rfl

theorem ebRun_setJn {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {Γ : Gam} {u : State σ} {p : Ptrs}
    (h : EbRun Γ0 s0 p0 Γ u p) {w : BitVec 64}
    (hG : G guestC (HR σ) Γ (setKvarHOLFinite .global (nm "journal_n") (.val (.word w)) u)) :
    EbRun Γ0 s0 p0 Γ (setKvarHOLFinite .global (nm "journal_n") (.val (.word w)) u) p := by
  have hgw : ∀ g', g' ≠ nm "journal_n" →
      gword (setKvarHOLFinite .global (nm "journal_n") (.val (.word w)) u) g' = gword u g' :=
    fun g' hne' => gword_setG_ne hne'
  refine ⟨ebRun_ptrs0 h, ?_, ebRun_mono h, ebRun_ext h, ebRun_nf h, hG, ?_, ?_, ?_, ebRun_ord0 h⟩
  · unfold ptrsOf
    rw [hgw gHeap (by decide), hgw gFrame (by decide), hgw gScratch (by decide)]
    exact ebRun_ptrs h
  · exact jrNZ_of_gword (fun g' hgj => hgw g' (by
      simp [Frames.jrGs] at hgj; rcases hgj with rfl | rfl <;> decide)) (ebRun_jr h)
  · obtain ⟨e, he, hs⟩ := ebRun_ev h
    exact ⟨e, by rw [hgw _ (by decide)]; exact he, hs⟩
  · obtain ⟨e, he, hs⟩ := ebRun_cc h
    exact ⟨e, by rw [hgw _ (by decide)]; exact he, hs⟩

section jn
variable {E : EbE σ} {En : Env} {S : FS}

/-- `journal_n = 0;` with no fact naming `journal_n`. -/
theorem hn_assignJn0 (hgS : ∀ g' w t, S (Fct.gobj g' w t) → g' ≠ nm "journal_n")
    (hgv : ∀ g' w, S (Fct.gval g' w) → g' ≠ nm "journal_n") :
    HN (PA E En S) (.assign .global (nm "journal_n") (cw 0)) (PA E En S) := by
  refine hoare_assignK ?_
  intro s hs hpa v hv hvalid
  obtain ⟨⟨Γ, p, hr, hL⟩, hlk⟩ := hpa
  rw [ev_cw] at hv
  cases hv
  obtain ⟨q, -, -, -, -, -, hGl, -⟩ := ebRun_G hr
  obtain ⟨w0, hw0, -⟩ := hGl (nm "journal_n") _ (by decide : guestC.GT.lookup (nm "journal_n") = some .scalar)
  have hlook : s.globals.lookup (nm "journal_n") = some (.val (.word w0)) := by
    unfold gword at hw0
    revert hw0
    rcases h : s.globals.lookup (nm "journal_n") with _ | ⟨_ | ⟨_ | _⟩ | _⟩ <;> simp
    rintro rfl; rfl
  have hGs := G_jn_zero (ebRun_G hr) (J := w0) hlook
  exact ⟨rfl, ⟨Γ, p, ebRun_setJn hr hGs, holdsAll_setGlob hL hgS hgv⟩, fun x v hx => hlk x v hx⟩

end jn

end InitECandidate.Solver.MemSafe.Wg
