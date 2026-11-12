import InitECandidate.Solver.MemSafe.Ptx.PcmTh

/-!
# F3c: Hoare steps that keep `THm` (`state_restore`, `refill_frame_state_gas`, `frame_halt`, stores to `ev + off`)
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Ptx
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Entry2

variable {σ : Type}

section th2
variable {Γ0 : Gam} {s0 : State σ} {msg child : BitVec 64} {LOC : Locs → Prop}

theorem hoare_th_sr (hLOC : ∀ l, LOC l → ∃ w, l.lookup (nm "snapshot") = some (.val (.word w))) :
    Hoare σ guestCtx (fun s => THm Γ0 s0 msg child s ∧ LOC s.locals)
      (callD (nm "state_restore") [lv (nm "snapshot")])
      (fun r t => r = none ∧ THm Γ0 s0 msg child t ∧ LOC t.locals) := by
  refine hoare_callD (sumSpecA_relX stSum_sr) ?_
  intro s hs ⟨hT, hL⟩ vs hvs callee v st hR hst
  obtain ⟨w, hw⟩ := hLOC _ hL
  rw [evs_cons (ev_lv_eq hw) evs_nil] at hvs
  cases hvs
  have hTe : THm Γ0 s0 msg child (callEntryStateHOLFinite s callee) :=
    thm_congr hT rfl rfl rfl rfl
  obtain ⟨-, -, -, -, -, -, -, -, -, hJ⟩ := hTe.1
  have hTs : THm Γ0 s0 msg child st := thm_step hTe fun Γ p hG hp hev =>
    step_st hR hG hp (argsOK_any (by simp [HtabEntries.srSig]) (by simp [HtabEntries.srSig])) hJ
      (by simp [HtabEntries.srSig]) hev
  exact ⟨rfl, thm_congr hTs rfl rfl rfl rfl, hL⟩

theorem hoare_th_refill :
    Hoare σ guestCtx (fun s => THm Γ0 s0 msg child s ∧ LOC s.locals)
      (callD (nm "refill_frame_state_gas") [])
      (fun r t => r = none ∧ THm Γ0 s0 msg child t ∧ LOC t.locals) := by
  refine hoare_callD (FunSpec.and (refill_spec guestCtx_code) (funSpec_dom _)) ?_
  intro s hs ⟨hT, hL⟩ vs hvs callee v st ⟨hR, hd, hbe⟩ hst
  obtain ⟨e', S, he', -, hg, hm⟩ := hR (by simp [Good])
  have hTe : THm Γ0 s0 msg child (callEntryStateHOLFinite s callee) :=
    thm_congr hT rfl rfl rfl rfl
  have hev := hTe.2.1
  obtain rfl : e' = child := Option.some.inj (he'.symm.trans hev)
  have hTs : THm Γ0 s0 msg e' st := thm_step hTe fun Γ' p' hG' hp' ⟨o', ho', hob', hot'⟩ => by
    refine ⟨Γ', p', drv_step hG' hp' ho' hot' hob' ?_ hg hd hbe⟩
    rw [hob', hm]; unfold refillMem
    exact modifiesOnly_upd (modifiesOnly_upd (modifiesOnly_upd (modifiesOnly_refl _ _)
      ⟨8, by simp [evDriverSlots], rfl⟩ _) ⟨9, by simp [evDriverSlots], rfl⟩ _)
      ⟨24, by simp [evDriverSlots], rfl⟩ _
  exact ⟨rfl, thm_congr hTs rfl rfl rfl rfl, hL⟩

theorem hoare_th_halt {x : ExpHOL 64} :
    Hoare σ guestCtx (fun s => THm Γ0 s0 msg child s ∧ LOC s.locals)
      (callD (nm "frame_halt") [x])
      (fun r t => r = none ∧ THm Γ0 s0 msg child t ∧ LOC t.locals) := by
  refine hoare_callD (FunSpec.and (halt_spec guestCtx_code) (funSpec_dom _)) ?_
  intro s hs ⟨hT, hL⟩ vs hvs callee v st ⟨hR, hd, hbe⟩ hst
  obtain ⟨e', err, -, he', -, hg, hm⟩ := hR (by simp [Good])
  have hTe : THm Γ0 s0 msg child (callEntryStateHOLFinite s callee) :=
    thm_congr hT rfl rfl rfl rfl
  have hev := hTe.2.1
  obtain rfl : e' = child := Option.some.inj (he'.symm.trans hev)
  have hTs : THm Γ0 s0 msg e' st := thm_step hTe fun Γ' p' hG' hp' ⟨o', ho', hob', hot'⟩ => by
    refine ⟨Γ', p', drv_step hG' hp' ho' hot' hob' ?_ hg hd hbe⟩
    rw [hob', hm]; unfold haltMem
    exact modifiesOnly_upd (modifiesOnly_upd (modifiesOnly_upd (modifiesOnly_refl _ _)
      ⟨23, by simp [evDriverSlots], rfl⟩ _) ⟨8, by simp [evDriverSlots], rfl⟩ _)
      ⟨20, by simp [evDriverSlots], rfl⟩ _
  exact ⟨rfl, thm_congr hTs rfl rfl rfl rfl, hL⟩

theorem hoare_th_stEv {off : Nat} (hoff : off % 8 = 0) (hj : off / 8 ∈ evDriverSlots) {e : ExpHOL 64}
    (hv : ∀ s : State σ, THm Γ0 s0 msg child s → ∃ x, ev s e = some (.val (.word x))) :
    Hoare σ guestCtx (fun s => THm Γ0 s0 msg child s ∧ LOC s.locals)
      (.store (.op .add [gv (nm "ev"), cw off]) e)
      (fun r t => r = none ∧ THm Γ0 s0 msg child t ∧ LOC t.locals) := by
  refine hoare_store fun s hs ⟨hT, hL⟩ w v mem hw hve hmem => ?_
  rw [ev_add2 (HtabEntries.ev_gv (gword_some hT.2.1)) (ev_cw s off)] at hw
  cases hw
  obtain ⟨x, hx⟩ := hv s hT
  rw [hx] at hve
  cases hve
  have hmem' := Struct.store_word hmem
  subst hmem'
  refine ⟨rfl, thm_step (t := { s with memory := upd s.memory (child + BitVec.ofNat 64 off) x }) hT
    fun Γ' p' hG' hp' ⟨o', ho', hob', hot'⟩ => ?_, hL⟩
  refine ⟨Γ', p', drv_step (child := child) hG' hp' ho' hot' hob' ?_ rfl rfl rfl⟩
  rw [hob']
  refine modifiesOnly_upd (modifiesOnly_refl _ _) ⟨off / 8, hj, ?_⟩ x
  congr 2; omega

/-- **Eon: `st ev + 128, x`** with `x` below `2^32` (`EV_OUTPUT_N`). -/
theorem hoare_th_stOut {e : ExpHOL 64} {x : BitVec 64} (hx : x.toNat < 2 ^ 32)
    (hv : ∀ s : State σ, THm Γ0 s0 msg child s → ev s e = some (.val (.word x))) :
    Hoare σ guestCtx (fun s => THm Γ0 s0 msg child s ∧ LOC s.locals)
      (.store (.op .add [gv (nm "ev"), cw 128]) e)
      (fun r t => r = none ∧ THm Γ0 s0 msg child t ∧ LOC t.locals) := by
  refine hoare_store fun s hs ⟨hT, hL⟩ w v mem hw hve hmem => ?_
  rw [ev_add2 (HtabEntries.ev_gv (gword_some hT.2.1)) (ev_cw s 128)] at hw
  cases hw
  rw [hv s hT] at hve
  cases hve
  have hmem' := Struct.store_word hmem
  subst hmem'
  refine ⟨rfl, thm_step (t := { s with memory := upd s.memory (child + BitVec.ofNat 64 128) x }) hT
    fun Γ' p' hG' hp' ⟨o', ho', hob', hot'⟩ => ?_, hL⟩
  refine ⟨Γ', p', drv_step16 (child := child) hG' hp' ho' hot' hob' ?_ ?_ rfl rfl rfl⟩
  · rw [hob']
    exact modifiesOnly_upd (modifiesOnly_refl _ _) ⟨16, by simp [evDriverSlots16], rfl⟩ x
  · show (rd (upd s.memory (child + BitVec.ofNat 64 128) x) (o'.base + BitVec.ofNat 64 128)).toNat < 2 ^ 32
    rw [hob', rd_upd, if_pos rfl]; exact hx

end th2

end InitECandidate.Solver.MemSafe.Ptx
