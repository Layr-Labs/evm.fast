import InitECandidate.Solver.MemSafe.Ptx.PtT32

/-!
# F3h: the back half of the tail from `ptS155` (loop 1) on
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

variable {σ : Type}

macro "envne" : tactic => `(tactic| (repeat rw [env_set_ne _ _ (by decide)]))

/-- The receipt slice lies in the adopted block. -/
theorem rc_fact {A : TlA σ} {ref : BitVec 64 → BitVec 64} {Z : BitVec 64 → Prop} {O : List Obj} {u : State σ}
    {Γ : Gam} {p : Ptrs} (h : TlS A ref Z O u Γ p) {rp rl : BitVec 64} {buf n : Nat}
    (hx : (⟨BitVec.ofNat 64 buf, tVAL, n⟩ : Obj) ∈ O) (hrl : 1 ≤ rl.toNat) (hb1 : buf ≤ rp.toNat)
    (hb2 : rp.toNat + rl.toNat ≤ buf + n) (hb3 : buf + n < 2 ^ 64) : Hooks.VInR tVAL Γ rp rl := by
  obtain ⟨o', ho', hb, ht, hs⟩ := h.hO _ hx
  have hbase : (BitVec.ofNat 64 buf).toNat = buf := by
    rw [BitVec.toNat_ofNat]; exact Nat.mod_eq_of_lt (by omega)
  right
  refine ⟨o', ho', ht, ?_, ?_⟩
  · unfold Obj.lo; rw [hb]; simp only at hs; rw [hbase]; exact hb1
  · show rp.toNat + rl.toNat ≤ o'.base.toNat + o'.size
    rw [hb, hbase]; simp only at hs; omega

/-- The facts the back half needs (about the kept cells). -/
structure BackF (K : TlCtx σ) (ref : BitVec 64 → BitVec 64) (Z : BitVec 64 → Prop) (rp rl : BitVec 64) (buf n : Nat) :
    Prop where
  hBC : ∀ a, Z a → BlkC K a
  hblk : ∀ a, BlkC K a → ¬ K.Wt a → Z a ∧ ref a = K.ref0 a
  c1 : Z (K.E.rcs + K.E.idx * 16) ∧ ref (K.E.rcs + K.E.idx * 16) = rp
  c2 : Z (K.E.rcs + K.E.idx * 16 + 8) ∧ ref (K.E.rcs + K.E.idx * 16 + 8) = rl
  h80 : Z (K.out + BitVec.ofNat 64 80) ∧ ref (K.out + BitVec.ofNat 64 80) = K.ref0 (K.out + BitVec.ofNat 64 80)
  h88 : Z (K.out + BitVec.ofNat 64 88) ∧ ref (K.out + BitVec.ofNat 64 88) = K.ref0 (K.out + BitVec.ofNat 64 88)
  hmv : K.ref0 (K.out + BitVec.ofNat 64 80) ≠ 0 →
    MarkVals (K.ref0 (K.out + BitVec.ofNat 64 80)) (K.ref0 (K.out + BitVec.ofNat 64 88))
  h24 : Z (K.out + BitVec.ofNat 64 24) ∧ ref (K.out + BitVec.ofNat 64 24) = K.ref0 (K.out + BitVec.ofNat 64 24)
  h40 : Z (K.E.bo + BitVec.ofNat 64 40) ∧ ref (K.E.bo + BitVec.ofNat 64 40) = K.ref0 (K.E.bo + BitVec.ofNat 64 40)
  h72 : Z (K.E.bo + BitVec.ofNat 64 72) ∧ ref (K.E.bo + BitVec.ofNat 64 72) = K.ref0 (K.E.bo + BitVec.ofNat 64 72)
  rcb : 1 ≤ rl.toNat ∧ buf ≤ rp.toNat ∧ rp.toNat + rl.toNat ≤ buf + n ∧ buf + n < 2 ^ 64

section g2
variable {K : TlCtx σ} {ref : BitVec 64 → BitVec 64} {Z : BitVec 64 → Prop} {O : List Obj} {En : Env}
  {rp rl : BitVec 64} {buf n : Nat}

/-- **From `ptS155` (loop 1) to the return.** -/
theorem tl_g2 {nlw : BitVec 64} (hP : TlPre K) (hgs : Bal.HGS σ) (F : BackF K ref Z rp rl buf n)
    (hx : (⟨BitVec.ofNat 64 buf, tVAL, n⟩ : Obj) ∈ O)
    (hnl : En (nm "nl") = some (.val (.word nlw))) (hnlb : nlw.toNat ≤ 2 ^ 25)
    (hslot : En (nm "slot") = none) (hi : En (nm "i") = none) (hcap : En (nm "stable_log_cap") = none)
    (hsl : En (nm "stable_logs") = none) (hlp : En (nm "stable_lp") = none) (hrl : En (nm "rl") = none)
    (hout : En (nm "out") = some (.val (.word K.out)))
    (hdel : En (nm "del") = none) (hdcap : En (nm "dcap") = none) (hs : En (nm "s") = none)
    (hmkv : En (nm "tx_frame_mark") = none) :
    Hoare σ guestCtx (PAg (TL K.A ref Z O) En) ptS155
      (fun r t => r = some (.returned (.val (.word 0))) ∧ TailPost K t) := by
  have hQT := locIns_tail K
  have hLL : ∃ o ∈ K.E.Γ0, o.base = K.ref0 (K.E.bo + BitVec.ofNat 64 40) ∧ o.ty = tLSTh := hP.B.logsObj
  have hRL : ∃ o ∈ K.E.Γ0, o.base = K.ref0 (K.E.bo + BitVec.ofNat 64 72) ∧ o.ty = tLSTh := hP.B.rlogsObj
  refine tb2 hP F.h40 hLL (fun a ha => blkC_inl (F.hBC a ha)) hslot hi ?_
  refine tb3a hQT hnl hcap ?_
  set En1 := En.set (nm "stable_log_cap") (.val (.word (capOf nlw))) with hEn1
  have hnl1 : En1 (nm "nl") = some (.val (.word nlw)) := by rw [hEn1]; envne; exact hnl
  have hcap1 : En1 (nm "stable_log_cap") = some (.val (.word (capOf nlw))) := env_set_self _ _ _
  have hsl1 : En1 (nm "stable_logs") = none := by rw [hEn1]; envne; exact hsl
  have hlp1 : En1 (nm "stable_lp") = none := by rw [hEn1]; envne; exact hlp
  have hi1 : En1 (nm "i") = none := by rw [hEn1]; envne; exact hi
  refine tb3b hP hQT (fun a ha => blkC_inl (F.hBC a ha)) hnl1 hnlb hcap1 hsl1 hlp1 hi1 ?_
  intro l q
  set c := (capOf nlw).toNat with hcdef
  have hxO : (⟨BitVec.ofNat 64 buf, tVAL, n⟩ : Obj) ∈ O ++ [⟨q, tLSTAh, 8 * c⟩] ++ [⟨l, tLSTh, 24⟩] := by
    simp [hx]
  have harr : (⟨q, tLSTAh, 8 * c⟩ : Obj) ∈ O ++ [⟨q, tLSTAh, 8 * c⟩] ++ [⟨l, tLSTh, 24⟩] := by simp
  have hspE : ((En1.set (nm "stable_logs") (.val (.word l))).set (nm "stable_lp") (.val (.word q)))
      (nm "stable_lp") = some (.val (.word q)) := env_set_self _ _ _
  have hnlE : ((En1.set (nm "stable_logs") (.val (.word l))).set (nm "stable_lp") (.val (.word q)))
      (nm "nl") = some (.val (.word nlw)) := by envne; exact hnl1
  refine tb4 (nlw := nlw) (fun a ha => blkC_inl (F.hBC a ha)) harr capOf_ge hnlb hspE hnlE ?_
  refine tl_g1 (l := l) hP hgs F.hBC F.hblk ?_ F.h80 F.h88 F.hmv F.h24 F.h72 hRL ?_ ?_ ?_ ?_ ?_ ?_ ?_
  · intro Γ p u h
    exact ⟨F.c1.1, F.c2.1, by
      rw [F.c1.2, F.c2.2]
      exact rc_fact h hxO F.rcb.1 F.rcb.2.1 F.rcb.2.2.1 F.rcb.2.2.2⟩
  · envne; exact hout
  · envne; exact hrl
  · envne; exact env_set_self _ _ _
  · envne; exact hdel
  · envne; exact hdcap
  · envne; exact hs
  · envne; exact hmkv

end g2

end InitECandidate.Solver.MemSafe.Ptx
