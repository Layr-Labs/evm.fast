import InitECandidate.Solver.Band6.GptsK
import InitECandidate.Solver.Band5.Idx

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

/-!
# `idx_start_storage` at the key-out signature (Band6)

`CondCost` of `idx_start_storage` for an address that is a source key (`Bal.IsPre`: `BsNN`,
`SrcKey Γ addr 20 tHTb20`, `bal_key_buf` a `tB64` object, `bal_idx_stor` a `tHTh60` object), at the
signature `storWgsSig`. Mirrors `Band5.is_condCost`, which needs a writable `.buf 20` address.
-/

namespace InitECandidate.Solver.Band6
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Bal InitECandidate.Solver.Band3
open InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.MemSafe.Stor
open InitECandidate.Solver.Band5 (isBody isB code_is cost_suf cs_stle cs_mc cs_get bMc bGet argsOK_st argsOK_mc
  buf64_noOvf b64_buf64 KbNZ)

variable {σ : Type}

/-- The thread invariant after `var kb = bal_key_buf`. -/
def AIK (ADDR KEY : BitVec 64) (s : State σ) (Γ : Gam) (p : Ptrs) : Prop :=
  AuxA (nm "kb") 64 s Γ p ∧ AK ADDR s Γ p ∧ s.locals.lookup (nm "key") = some (.val (.word KEY))

/-- The entry invariant. -/
def AI0 (ADDR KEY : BitVec 64) (s : State σ) (Γ : Gam) (_p : Ptrs) : Prop :=
  BsNN s Γ ∧ SrcKey Γ ADDR 20 tHTb20 ∧ s.locals.lookup (nm "addr") = some (.val (.word ADDR)) ∧
    s.locals.lookup (nm "key") = some (.val (.word KEY)) ∧ GF (nm "bal_key_buf") tB64 Γ s

theorem aik_step {ADDR KEY : BitVec 64} {s s' : State σ} {Γ Γ' : Gam} {p p' : Ptrs}
    (h : AIK ADDR KEY s Γ p) (hs : Stp Γ Γ' p p')
    (hg : ∀ g ∈ bal4, s'.globals.lookup g = s.globals.lookup g)
    (ha : s'.locals.lookup (nm "addr") = s.locals.lookup (nm "addr"))
    (hk : s'.locals.lookup (nm "kb") = s.locals.lookup (nm "kb"))
    (hy : s'.locals.lookup (nm "key") = s.locals.lookup (nm "key")) : AIK ADDR KEY s' Γ' p' :=
  ⟨auxA_step h.1 hs hk, ak_step h.2.1 hs hg ha, by rw [hy]; exact h.2.2⟩

set_option linter.unusedVariables false in
/-- **`idx_start_storage`'s conditional cost** at `storWgsSig` / `IsPre`. -/
theorem isk_condCost
    (hGT : Types.guestC.GT.lookup (nm "ws") = some (.nptr Types.tWSR)) :
    CondCost σ guestCtx Types.guestC (guestHooksR (σ := σ)) (nm "idx_start_storage")
      storWgsSig IsPre isB := by
  have hH := guestHooksR_lawful (σ := σ)
  intro vs body callee rs hl
  rw [guestCtx_code] at hl
  obtain ⟨rfl, -, A, B, rfl, -, -, hA, hB⟩ := lookupCode_two code_is (by decide) hl
  rintro s hs ⟨hloc, Γ, p, hG, hp, hargs, ADDR, KEY, hvs, hBs, hkey, hkb, his⟩ hg
  simp only [List.cons.injEq, and_true] at hvs
  obtain ⟨rfl, rfl⟩ := hvs
  have main : Inv.CostP σ guestCtx (PGt Types.guestC (guestHooksR (σ := σ)) (AI0 ADDR KEY))
      Band5.isBody isB := by
    unfold Band5.isBody isB
    refine costP_dec_G hH (Aux' := AIK ADDR KEY) ?_ ?_
    · intro s0 _ Γ0 p0 hG0 hp0 hA0 v hv hsh
      obtain ⟨hbs0, hkey0, hal, hkl, w0, hw0, o, ho, hob, hot⟩ := hA0
      have hv' : s0.globals.lookup (nm "bal_key_buf") = some v := hv
      have hw1 : s0.globals.lookup (nm "bal_key_buf") = some (.val (.word w0)) := by
        unfold gword at hw0
        split at hw0
        · rename_i w' hw'; cases hw0; exact hw'
        · cases hw0
      obtain rfl : v = .val (.word w0) := Option.some.inj (hv'.symm.trans hw1)
      refine ⟨⟨w0, lk_set_self _ _ _, b64_buf64 hG0 hp0 ⟨o, ho, hob, hot⟩⟩,
        ⟨hbs0, hkey0, ?_⟩, ?_⟩
      · rw [lk_set_ne _ _ (by decide)]; exact hal
      · rw [lk_set_ne _ _ (by decide)]; exact hkl
    -- `st_le64(kb, bal_index)`
    refine costP_seq_callD_SG (Aux' := AIK ADDR KEY) (PreC := fun _ _ => True) cs_stle (by decide_cbv)
      (Inv.calleeCostP_of_calleeCost
        (Wire.calleeCost_guest (f := nm "st_le64") (B := 2) rfl))
      (fun _ _ _ _ _ _ => trivial)
      (fun s0 _ Γ0 p0 hG0 hp0 hA0 vs0 hvs0 callee0 => by
        obtain ⟨K, hKl, hKb⟩ := hA0.1
        exact ⟨argsOK_st hKb hKl hvs0, reqOK_nil⟩)
      (fun s0 st callee0 Γ0 p0 Γ' p' vs0 v0 hG0 hA0 hvs0 _ hcore hq hgw =>
        aik_step hA0 (stp_of_core_s hH hG0 hcore) hgw rfl rfl rfl) ?_
    -- `memcpy(kb + 8, addr, 20)`
    refine costP_seq_callD_SG (Aux' := AIK ADDR KEY) (PreC := fun _ _ => True) cs_mc (by decide_cbv)
      (Inv.calleeCostP_of_calleeCost
        (Wire.calleeCost_guest (f := nm "memcpy") (B := bMc) rfl))
      (fun _ _ _ _ _ _ => trivial)
      (fun s0 _ Γ0 p0 hG0 hp0 hA0 vs0 hvs0 callee0 => by
        obtain ⟨K, hKl, hKb⟩ := hA0.1
        exact ⟨argsOK_mc hKb (buf64_noOvf hG0 hp0 hKb) (off := 8) (n := 20) (by omega) hKl hvs0,
          reqOK_nil⟩)
      (fun s0 st callee0 Γ0 p0 Γ' p' vs0 v0 hG0 hA0 hvs0 _ hcore hq hgw =>
        aik_step hA0 (stp_of_core_s hH hG0 hcore) hgw rfl rfl rfl) ?_
    -- `memcpy(kb + 28, key, 32)`
    refine costP_seq_callD_SG (Aux' := AIK ADDR KEY) (PreC := fun _ _ => True) cs_mc (by decide_cbv)
      (Inv.calleeCostP_of_calleeCost
        (Wire.calleeCost_guest (f := nm "memcpy") (B := bMc) rfl))
      (fun _ _ _ _ _ _ => trivial)
      (fun s0 _ Γ0 p0 hG0 hp0 hA0 vs0 hvs0 callee0 => by
        obtain ⟨K, hKl, hKb⟩ := hA0.1
        exact ⟨argsOK_mc hKb (buf64_noOvf hG0 hp0 hKb) (off := 28) (n := 32) (by omega) hKl hvs0,
          reqOK_nil⟩)
      (fun s0 st callee0 Γ0 p0 Γ' p' vs0 v0 hG0 hA0 hvs0 _ hcore hq hgw =>
        aik_step hA0 (stp_of_core_s hH hG0 hcore) hgw rfl rfl rfl) ?_
    -- `var m = htab_get(bal_idx_stor, kb)`
    refine costP_decCall_SG (Aux' := AIK ADDR KEY) (PreC := fun _ _ => True) cs_get (by decide_cbv)
      (Inv.calleeCostP_of_calleeCost
        (Wire.calleeCost_guest (f := nm "htab_get") (B := bGet) rfl))
      (fun _ _ _ _ _ _ => trivial)
      (fun s0 _ Γ0 p0 _ _ _ vs0 hvs0 callee0 =>
        ⟨hargs_any (by simp) rfl hvs0, reqOK_nil⟩)
      (fun s0 st callee0 Γ0 p0 Γ' p' vs0 v0 _ hG0 hA0 hvs0 _ hcore hq hgw =>
        aik_step hA0 (stp_of_core_s hH hG0 hcore) hgw (lk_sv (by decide) v0 st s0.locals)
          (lk_sv (by decide) v0 st s0.locals) (lk_sv (by decide) v0 st s0.locals)) ?_
    refine costP_guard ?_
    -- `var v = get_pre_tx_storage(addr, key); suffix`
    refine Band.costP_decCall (gptsK_condCost (σ := σ) hGT) ?_ (funSpec_true _) ?_
    · intro s0 _ hP vs0 hvs0 callee0
      obtain ⟨Γ0, p0, hG0, hp0, hA0⟩ := hP
      refine ⟨Γ0, p0, (Frames.G_locFree hH s0 _ _).mpr hG0,
        (Frames.ptrsOf_congr rfl).trans hp0, hargs_any (by simp [storWgsSig]) rfl hvs0, ?_⟩
      obtain ⟨a1, r1, rfl, h1, hr1⟩ := evs_cons_inv hvs0
      obtain ⟨a2, r2, rfl, h2, hr2⟩ := evs_cons_inv hr1
      rw [evs_nil] at hr2
      cases hr2
      rw [ev_lv, hA0.2.1.2.2] at h1
      rw [ev_lv, hA0.2.2] at h2
      cases h1
      cases h2
      exact ⟨ADDR, KEY, rfl, hA0.2.1.1, hA0.2.1.2.1⟩
    · intro _ _ _ _ _ _ _ _ _ _ _
      exact Inv.costP_of_cost cost_suf
  exact main s hs ⟨Γ, p, hG, hp, hBs, hkey, by rw [hloc]; exact hA, by rw [hloc]; exact hB, hkb⟩ hg

end InitECandidate.Solver.Band6

#print axioms InitECandidate.Solver.Band6.isk_condCost
