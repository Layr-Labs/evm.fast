import InitECandidate.Solver.MemSafe.Annot.FrameCfg
import InitECandidate.Solver.MemSafe.Frames.Ctor

/-!
# The guest configuration meets the frame constructors' requirements (M2)

`drvCfg_guest`: `guestC` satisfies `Frames.DrvCfg` with `tEV` / `tCK`, given `FrameCfg` (see
`frameCfg_guest`) and the hook-family conditions (`HooksMonoF`, CK hooks trivial, hooks blind to
`ev` / `cur_cont`). The configuration conditions (CK untagged, at most 104 bytes, scratch region,
`ev` / `cur_cont` typed `nptr`, allocator globals untyped and unprotected) are discharged here.
-/

namespace InitECandidate.Solver.MemSafe.Annot
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.Spec

theorem drv_ckTag : guestC.tags.lookup tCK = none := by decide

theorem drv_ckMin : (guestC.ty tCK).minSz ≤ 104 := by decide

theorem drv_ckRegion : (guestC.ty tCK).region = .scratch := rfl

theorem drv_evGT : ∀ k, guestC.GT.lookup nmEv = some k → k = .ptr tEV ∨ k = .nptr tEV := by
  intro k h
  have e : guestC.GT.lookup nmEv = some (.nptr tEV) := gt_ev
  rw [e] at h
  cases h
  exact Or.inr rfl

theorem drv_ccGT : ∀ k, guestC.GT.lookup nmCC = some k → k = .ptr tCK ∨ k = .nptr tCK := by
  intro k h
  have e : guestC.GT.lookup nmCC = some (.nptr tCK) := gt_cur_cont
  rw [e] at h
  cases h
  exact Or.inr rfl

theorem drv_allocG : Helpers.AllocGlobs guestC := by
  intro g hg
  have h := alloc_untyped g (by rcases hg with rfl | rfl | rfl <;> simp)
  exact ⟨h.2, h.1⟩

/-- **`guestC` meets `DrvCfg`.** -/
theorem drvCfg_guest {σ : Type} {H : Hooks σ} (hF : FrameCfg guestC H tEV tCK)
    (hmono : HooksMonoF guestC H)
    (hck : ∀ (Γ : Gam) (s : State σ) (o : Obj), o.ty = tCK → H.wf Γ s o)
    (hglob : ∀ (Γ : Gam) (s t : State σ) (o : Obj), H.wf Γ s o → t.memory = s.memory →
      t.memaddrs = s.memaddrs → t.be = s.be →
      (∀ g ∈ guestC.PG, g ≠ nmEv → g ≠ nmCC → t.globals.lookup g = s.globals.lookup g) →
        H.wf Γ t o) :
    DrvCfg guestC H tEV tCK :=
  ⟨hF, hmono, hck, drv_ckTag, drv_ckMin, drv_ckRegion, drv_evGT, drv_ccGT, hglob, drv_allocG⟩

end InitECandidate.Solver.MemSafe.Annot
