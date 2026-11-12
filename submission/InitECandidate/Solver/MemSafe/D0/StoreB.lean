import InitECandidate.Solver.MemSafe.D0.Store
import InitECandidate.Solver.MemSafe.D0.Kp
import InitECandidate.Solver.MemSafe.Helpers.Basic
import InitECandidate.Solver.MemSafe.D0.Alloc24
import InitECandidate.Solver.MemSafe.Cell

/-!
# Writes to buffer cells keep `KP`

`inert_writeB`: as `inert_write`, but the written cells need only be `BufCell`s (scalar cells of a
`Γ` object, or cells outside every object: `G_buf`) and the run is a `RunT`.
`kp_store_inertB`, `hoareG_kpStByte` (`storeByte` into an aligned fresh block).
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace InitECandidate.Solver.MemSafe.D0
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Frames

variable {σ : Type}

theorem inert_writeB {H : Hooks σ} (hF : FrameCfg guestC H tEV tCK) {gw : List MlS} {Γ : Gam}
    {s t : State σ} {fs rest : List Frame} {e c : BitVec 64} (hG : G guestC H Γ s)
    (hch : ChainL guestC tEV tCK Γ s fs) (hE : ChainE GP GR Γ s fs) (hfs : fs = (e, c) :: rest)
    {Z : BitVec 64 → Prop} (hmod : ModifiesOnly Z s.memory t.memory)
    (hsafe : ∀ a, Z a → Helpers.BufCell guestC Γ a) (hZ : InertZ Γ Z) (hglob : t.globals = s.globals)
    (hd : t.memaddrs = s.memaddrs) (hbe : t.be = s.be) :
    ∃ p, RunT guestC H gw Γ s Γ t p p ∧ ChainL guestC tEV tCK Γ t fs ∧ ChainE GP GR Γ t fs ∧
      wsum t.memory fs = wsum s.memory fs ∧
      (∀ f ∈ fs, ∀ k, k < 280 → ¬ FreeOff k → fld t.memory f.1 k = fld s.memory f.1 k) := by
  have ⟨p, hps, hord, hL, _⟩ := hG
  have hG' : G guestC H Γ t := Helpers.G_buf hF.hooks Helpers.tagSlots_guestC hG hglob hd hbe hmod hsafe
  have hBc : ∀ a, Z a → ¬ KCell guestC Γ a := by
    intro a hz hbc
    obtain ⟨o, ho, -, k, hk, hpr, rfl⟩ := kCell_keep hbc
    rcases hsafe _ hz with ⟨o', ho', k', hk', hsc, he⟩ | hn
    · obtain ⟨rfl, rfl⟩ := cell_inj hord hL ho ho' hk hk' he
      rw [hpr] at hsc; cases hsc
    · exact hn (cell_in hord hL ho hk)
  have hrun : RunT guestC H gw Γ s Γ t p p :=
    ⟨hps, by rw [ptrsOf_congr hglob]; exact hps, Frames.mono_refl p, Frames.ext_refl Γ,
      Frames.newFresh_refl Γ p, hG', fun g _ _ => by rw [hglob], bkeep_of_cells hmod hBc⟩
  have keep : ∀ o ∈ Γ, ∀ k, k < o.size →
      ((o.ty = tEV ∧ ¬ FreeOff k) ∨ o.ty = tCK ∨
        ((o.ty = tMSGh ∨ o.ty = tMSGs) ∧ (k = 16 ∨ k = 32)) ∨ LstTy o.ty) →
      fld t.memory o.base k = fld s.memory o.base k :=
    fun o ho k hk h => fld_mod hmod (hZ o ho k hk h)
  have keepL : ∀ o ∈ Γ, ∀ k, k < o.size → LstTy o.ty → fld t.memory o.base k = fld s.memory o.base k :=
    fun o ho k hk h => keep o ho k hk (Or.inr (Or.inr (Or.inr h)))
  have kEV : ∀ f ∈ fs, ∀ k, k < 280 → ¬ FreeOff k → fld t.memory f.1 k = fld s.memory f.1 k := by
    intro f hf k hk hnf
    obtain ⟨o, ho, hob, hot⟩ := ev_obj hch hf
    have hsz := ev_size hF hL ho hot
    rw [← hob]
    exact keep o ho k (by omega) (Or.inl ⟨hot, hnf⟩)
  have kCK : ∀ f ∈ fs, ∀ k, k < 104 → fld t.memory f.2 k = fld s.memory f.2 k := by
    intro f hf k hk
    obtain ⟨o, ho, hob, hot⟩ := ck_obj hch hf
    have hsz := ck_size hF hL ho hot
    rw [← hob]
    exact keep o ho k (by omega) (Or.inr (Or.inl hot))
  have hnf : ∀ k, (k = 8 ∨ k = 16 ∨ k = 24 ∨ k = 32 ∨ k = 40 ∨ k = 64 ∨ k = 88 ∨ k = 104 ∨ k = 112 ∨
      k = 136 ∨ k = 144 ∨ k = 192 ∨ k = 208 ∨ k = 216 ∨ k = 224 ∨ k = 232) → ¬ FreeOff k := by
    intro k hk hf; unfold FreeOff at hf; omega
  have hkeep : ChainKeep s t fs := by
    refine ⟨gword_congr hglob _, gword_congr hglob _, ?_, ?_, ?_, ?_, ?_⟩
    · intro f hf k hk
      simp only [ckChainSlots, ckParent, ckParentCont, ckKind, ckMark, ckMemMark, ckOutStart,
        ckOutSize, List.mem_cons, List.mem_nil_iff, or_false] at hk
      exact kCK f hf k (by omega)
    · intro f hf k hk
      simp only [evParentSlots, evSp, evStackCap, evMem, evMemCap, evMemLen, List.mem_cons,
        List.mem_nil_iff, or_false] at hk
      exact kEV f (List.mem_of_mem_tail hf) k (by omega) (hnf k (by omega))
    · intro f hf k hk
      simp only [evMem, evMemCap, List.mem_cons, List.mem_nil_iff, or_false] at hk
      exact kEV f (List.mem_of_mem_head? hf) k (by omega) (hnf k (by omega))
    · intro p' hp'
      exact ⟨p', by rw [← ptrsOf_congr hglob]; exact hp', rfl⟩
    · intro f hf k hk
      simp only [evRetd, evRetdCap, List.mem_cons, List.mem_nil_iff, or_false] at hk
      exact kEV f hf k (by omega) (hnf k (by omega))
  have hst : GStep guestC tEV Γ Γ s t e := by
    refine gStep_refl hps (by rw [ptrsOf_congr hglob]; exact hps) hord hL fun x hx hxt hne => ?_
    have hsz := ev_size hF hL hx hxt
    exact ⟨keep x hx 8 (by omega) (Or.inl ⟨hxt, by unfold FreeOff; omega⟩),
      keep x hx 24 (by omega) (Or.inl ⟨hxt, by unfold FreeOff; omega⟩)⟩
  have hch' : ChainL guestC tEV tCK Γ t fs :=
    chainL_keep hch hkeep (top := e) (fun f hf => by
      rw [hfs] at hf; simp only [List.head?_cons, Option.mem_def, Option.some.injEq] at hf
      rw [← hf]) hst
  have hw : wsum t.memory fs = wsum s.memory fs := by
    refine wsum_keep fun f hf => ⟨fun k hk => ?_, ?_⟩
    · simp only [evGasLeft, evSpilled, evRunning, List.mem_cons, List.mem_nil_iff, or_false] at hk
      exact kEV f hf k (by omega) (hnf k (by omega))
    · exact kCK f hf ckDone (by unfold ckDone; omega)
  refine ⟨p, hrun, hch', ⟨fun p' hp' f hf => ?_, fun ch pa hadj => ?_⟩, hw, kEV⟩
  · have hp0 : ptrsOf s = some p' := by rw [← ptrsOf_congr hglob]; exact hp'
    have hgp := hE.1 p' hp0 f hf
    obtain ⟨⟨M, hMΓ, hMb, hMt, hMs⟩, -⟩ := id hgp
    have hmb : fld s.memory f.1 112 = M.base := hMb.symm
    have hlk := gp_lst_keep hL hgp keepL
    refine gp_congr hgp (kEV f hf 88 (by omega) (hnf 88 (by omega)))
      (kEV f hf 112 (by omega) (hnf 112 (by omega))) (kEV f hf 136 (by omega) (hnf 136 (by omega)))
      (kEV f hf 208 (by omega) (hnf 208 (by omega))) (kEV f hf 224 (by omega) (hnf 224 (by omega)))
      ?_ ?_ hlk.1 hlk.2.1 hlk.2.2 (logKeep_of_lst keepL)
    · rw [hmb]; exact keep M hMΓ 16 (by omega) (Or.inr (Or.inr (Or.inl ⟨hMt, Or.inl rfl⟩)))
    · rw [hmb]; exact keep M hMΓ 32 (by omega) (Or.inr (Or.inr (Or.inl ⟨hMt, Or.inr rfl⟩)))
  · have hgr := hE.2 ch pa hadj
    obtain ⟨hchm, hpam⟩ := adj_mem hadj
    have hpam' : pa ∈ fs := List.mem_of_mem_tail hpam
    have hpag := hE.1
    obtain ⟨⟨M, ⟨hMΓ, hMb, hMt, hMs⟩, -⟩, -⟩ := hgr.2.1
    have hmb : fld s.memory pa.1 112 = M.base := hMb.symm
    have hlk := gp_lst_keep hL (hpag p hps pa hpam') keepL
    refine gr_congr hgr (kEV ch hchm 136 (by omega) (hnf 136 (by omega)))
      (kEV ch hchm 112 (by omega) (hnf 112 (by omega)))
      (kEV pa hpam' 136 (by omega) (hnf 136 (by omega)))
      (kEV pa hpam' 88 (by omega) (hnf 88 (by omega)))
      (kEV pa hpam' 112 (by omega) (hnf 112 (by omega))) ?_ ?_
      (kCK ch hchm 48 (by omega)) (kCK ch hchm 56 (by omega)) (kCK ch hchm 40 (by omega))
      hlk.1 hlk.2.1
    · rw [hmb]; exact keep M hMΓ 16 (by omega) (Or.inr (Or.inr (Or.inl ⟨hMt, Or.inl rfl⟩)))
    · rw [hmb]; exact keep M hMΓ 32 (by omega) (Or.inr (Or.inr (Or.inl ⟨hMt, Or.inr rfl⟩)))

section kpb
local notation "HJ" => (Hooks.guestHooksR (σ := σ))

/-- **A write to buffer cells keeps `KP`.** -/
theorem kp_store_inertB {gw : List MlS} {Γ0 : Gam} {s0 : State σ}
    {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64} {rest : List Frame} {mg : BitVec 64}
    (hfs : fs = (e, c) :: rest) {u t : State σ} (hu : KP HJ gw Γ0 s0 p0 fs e mg u)
    {Z : BitVec 64 → Prop}
    (hZ : ∀ Γ1 p1, RunT guestC HJ gw Γ0 s0 Γ1 u p0 p1 → ChainL guestC tEV tCK Γ1 u fs →
      ChainE GP GR Γ1 u fs → (∀ a, Z a → Helpers.BufCell guestC Γ1 a) ∧ InertZ Γ1 Z)
    (hmod : ModifiesOnly Z u.memory t.memory) (hg : t.globals = u.globals)
    (hd : t.memaddrs = u.memaddrs) (hbe : t.be = u.be) : KP HJ gw Γ0 s0 p0 fs e mg t := by
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  obtain ⟨hJ, Γ1, p1, hrun, hch, hE, hΦ, h112⟩ := hu
  have hG1 := hrun.2.2.2.2.2.1
  obtain ⟨hs, hi⟩ := hZ Γ1 p1 hrun hch hE
  obtain ⟨p, hrun2, hch2, hE2, hw, kE⟩ :=
    inert_writeB (gw := gw) hF hG1 hch hE hfs hmod hs hi hg hd hbe
  refine ⟨jrNZ_congr hg hJ, Γ1, p1, ?_, hch2, hE2, ?_, ?_⟩
  · obtain ⟨q, hq, hord, hL, _⟩ := hG1
    obtain rfl : q = p1 := Option.some.inj (hq.symm.trans hrun.2.1)
    obtain rfl : p = q := Option.some.inj (hrun2.1.symm.trans hrun.2.1)
    exact runT_trans hrun hrun2
  · rw [phi_eq hch2.chain, hw, ← phi_eq hch.chain]; exact hΦ
  · have hmem : (e, c) ∈ fs := by rw [hfs]; exact List.mem_cons_self ..
    rw [kE (e, c) hmem 112 (by omega) (by unfold FreeOff; omega)]; exact h112

/-- **`storeByte x, v`** into the aligned fresh block `Q` (a `tB8` object of the current typing):
`x` evaluates to `Q + off` with `off < 8`. -/
theorem hoareG_kpStByte {gw : List MlS} {Γ0 : Gam} {s0 : State σ}
    {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64} {rest : List Frame} {mg : BitVec 64}
    (hfs : fs = (e, c) :: rest) {u0 : State σ} (hu : KP HJ gw Γ0 s0 p0 fs e mg u0)
    {x v : ExpHOL 64} {Q : BitVec 64} {off : Nat} (hoff : off < 8) (hQ8 : Q.toNat % 8 = 0)
    (hx : ∀ w, ev u0 x = some (.val (.word w)) → w = Q + BitVec.ofNat 64 off)
    (hf : ∀ Γ1 p1, RunT guestC HJ gw Γ0 s0 Γ1 u0 p0 p1 → FreshB Γ1 Q) :
    HoareG σ guestCtx (fun t => t = u0) (.storeByte x v)
      (PS (KP HJ gw Γ0 s0 p0 fs e mg) u0.locals) := by
  refine hoareG_storeByte fun s _ hs w y mem hw hy hmem => ?_
  subst s
  obtain ⟨hd, hmod⟩ := storeByte_cell hmem
  have hwQ := hx w hw
  have halign : panByteAlignHOL w = Q := by
    apply BitVec.eq_of_toNat_eq
    rw [alignC_toNat, hwQ, BitVec.toNat_add, BitVec.toNat_ofNat]
    have := Q.isLt
    have h8 : off % 2 ^ 64 = off := Nat.mod_eq_of_lt (by omega)
    rw [h8, Nat.mod_eq_of_lt (by omega)]
    omega
  rw [halign] at hmod
  refine Or.inl ⟨rfl, kp_store_inertB hfs hu (Z := fun c => c = Q) ?_ hmod rfl rfl rfl, rfl⟩
  intro Γ1 p1 hrun hch hE
  obtain ⟨o, ho, hob, hot, hsz⟩ := hf Γ1 p1 hrun
  obtain ⟨q, hq, hord, hL, -⟩ := hrun.2.2.2.2.2.1
  refine ⟨?_, ?_⟩
  · rintro a rfl
    refine Or.inl ⟨o, ho, 0, by unfold Obj.HasSlot; omega, by rw [hot]; exact b8_scalar 0, ?_⟩
    rw [← hob]; simp [Obj.cell]
  · intro o' ho' k hk h hz
    have hz' : o'.base + BitVec.ofNat 64 k = o.base + BitVec.ofNat 64 (8 * 0) := by
      rw [hz, ← hob]; simp
    have hne : o'.base ≠ o.base := base_ne_of_ty hL ho' ho (by
      rw [hot]
      rcases h with ⟨h1, -⟩ | h1 | ⟨h1 | h1, -⟩ | h1 | h1 | h1 | h1 | h1 <;> rw [h1] <;> decide)
    exact cell_ne hord hL ho' ho hk (by omega) (Or.inl hne) hz'

end kpb

end InitECandidate.Solver.MemSafe.D0

#print axioms InitECandidate.Solver.MemSafe.D0.inert_writeB
#print axioms InitECandidate.Solver.MemSafe.D0.kp_store_inertB
#print axioms InitECandidate.Solver.MemSafe.D0.hoareG_kpStByte
