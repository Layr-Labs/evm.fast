import InitECandidate.Solver.MemSafe.Hooks.Rec
import InitECandidate.Solver.MemSafe.HtabEntries.JHooksG
import InitECandidate.Solver.MemSafe.Bal.GlobKit

/-!
# F3d: `journal_n = 0` keeps `G`
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Ptx
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (MlS)
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Hooks InitECandidate.Solver.MemSafe.HtabEntries
open InitECandidate.Solver.MemSafe.Frames

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

end InitECandidate.Solver.MemSafe.Ptx
