import InitECandidate.Solver.MemSafe.Types
import InitECandidate.Solver.MemSafe.Frames.Cells

/-!
# The guest configuration meets the frame driver's requirements (M2)

`frameCfg_guest`: `guestC` satisfies `Frames.FrameCfg` with `tEV` / `tCK`, given the two
conditions that are about the hook family rather than the configuration (no hook reads a
driver-written EV cell or a CK cell) and `HooksLawful`.
-/

namespace InitECandidate.Solver.MemSafe.Annot
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.Spec

theorem frame_ne : tEV ≠ tCK := by decide

theorem frame_evSz : 280 ≤ (guestC.ty tEV).minSz := by decide

theorem frame_ckSz : 104 ≤ (guestC.ty tCK).minSz := by decide

theorem frame_evProt : ∀ j ∈ evProtSlots, (guestC.ty tEV).slot j = .prot := by decide

theorem frame_ckProt : ∀ j, j < 13 → (guestC.ty tCK).slot j = .prot := by decide

theorem frame_evDriver : ∀ j ∈ evDriverSlots,
    (guestC.ty tEV).slot j = .scalar ∨ (guestC.ty tEV).slot j = .prot := by decide

theorem frame_ev16 : (guestC.ty tEV).slot 16 = .bnd := by decide

theorem frame_pgEv : nmEv ∈ guestC.PG := by decide

theorem frame_pgCC : nmCC ∈ guestC.PG := by decide

theorem frame_blkHeap : ∀ t ∈ keepTys, (guestC.ty t).region = .heap := by decide

theorem frame_evB : tEV ∉ keepTys := by decide

theorem frame_ckB : tCK ∉ keepTys := by decide

theorem frame_evL : tEV ∉ logTys := by decide

theorem frame_ckL : tCK ∉ logTys := by decide

theorem frame_lstSz : 16 ≤ (guestC.ty tLSTs).minSz := by decide

theorem frame_empty : ∃ k, guestC.GT.lookup (nm "evm_empty") = some k := ⟨_, gt_evm_empty⟩

/-- **`guestC` meets `FrameCfg`.** -/
theorem frameCfg_guest {σ : Type} {H : Hooks σ} (hH : HooksLawful guestC H)
    (hookEV : ∀ (Γ : Gam) (s : State σ) (o o' : Obj), o' ∈ Γ → o'.ty = tEV →
      ∀ j ∈ evDriverSlots16, ¬ H.fp Γ s o (o'.cell j))
    (hookCK : ∀ (Γ : Gam) (s : State σ) (o o' : Obj), o' ∈ Γ → o'.ty = tCK → ∀ j, j < 13 →
      ¬ H.fp Γ s o (o'.cell j)) :
    FrameCfg guestC H tEV tCK :=
  ⟨hH, frame_ne, frame_evSz, frame_ckSz, frame_evProt, frame_ckProt, frame_evDriver, frame_ev16, hookEV, hookCK,
    frame_pgEv, frame_pgCC, frame_empty, frame_evB, frame_ckB, frame_evL, frame_ckL, frame_lstSz, frame_blkHeap⟩

end InitECandidate.Solver.MemSafe.Annot
