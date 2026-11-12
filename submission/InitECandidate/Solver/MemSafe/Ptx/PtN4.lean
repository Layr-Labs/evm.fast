import InitECandidate.Solver.MemSafe.Ptx.PtN3

/-!
# F3e: the message-building context `MsK` and stores into the fresh message block
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

/-- The recorded cells of the message block as facts. -/
def MR (wm : BitVec 64) (L : List (Nat × BitVec 64)) : List Fct :=
  L.map (fun p => Fct.memw (wm + BitVec.ofNat 64 p.1) p.2)

structure MsK (E : PtE σ) (En : Env) (S : FS) (rp rl : BitVec 64) (buf n : Nat) (CV : List (BitVec 64))
    (w wt wa ak nv nkv wm : BitVec 64) (nbl : Nat) (L : List (Nat × BitVec 64)) : Prop where
  A : AdK E En S rp rl buf n CV w wt wa ak nv nkv nbl
  hm : En (nm "m") = some (.val (.word wm))
  hfbm : S (Fct.fbuf wm 176)
  hppm : S (Fct.prop (BlkP wm 176))
  hordm : S (Fct.prop (wa.toNat + nbl ≤ wm.toNat))
  hL : ∀ p ∈ L, p.1 % 8 = 0 ∧ p.1 + 8 ≤ 176 ∧ S (Fct.memw (wm + BitVec.ofNat 64 p.1) p.2)
  hrdm : RdIn S (MR wm L ++ [Fct.arrbuf wa nbl (nv.toNat + 1) 20, Fct.arrbuf wa nbl 1 20])
  /-- the gas limit stored in cell 40 is at most `2^24` -/
  h40 : ∀ x, (40, x) ∈ L → S (Fct.prop (x.toNat ≤ 2 ^ 24))

theorem ms_hrl {E : PtE σ} {En : Env} {S : FS} {rp rl : BitVec 64} {buf n : Nat} {CV : List (BitVec 64)}
    {w wt wa ak nv nkv wm : BitVec 64} {nbl : Nat} {L : List (Nat × BitVec 64)}
    (K : MsK E En S rp rl buf n CV w wt wa ak nv nkv wm nbl L) {off k : Nat}
    (hk : off + 8 * k ≤ 176) (hnr : ∀ p ∈ L, p.1 + 8 ≤ off ∨ off + 8 * k ≤ p.1) :
    ∀ s : State σ, PA E En S s → ∀ f ∈ MR wm L ++ [Fct.arrbuf wa nbl (nv.toNat + 1) 20, Fct.arrbuf wa nbl 1 20],
      ∀ y, f.reads y → ∀ j, j < k → y ≠ wm + BitVec.ofNat 64 (off + 8 * j) := by
  have hcap : 8 * (nv.toNat + 1) ≤ nbl := by rw [K.A.hnbl]; omega
  intro s hpa f hf y hy j hj
  obtain ⟨_, _, hwm⟩ := pa_prop hpa K.hppm
  obtain ⟨_, _, hwa⟩ := pa_prop hpa K.A.hppa
  have hor : wa.toNat + nbl ≤ wm.toNat := pa_prop hpa K.hordm
  have hb64 : heapEnd < 2 ^ 64 := by unfold heapEnd; norm_num
  rcases List.mem_append.mp hf with hf | hf
  · obtain ⟨p, hp, rfl⟩ := List.mem_map.mp hf
    simp only [Fct.reads] at hy; subst hy
    intro h
    have h2 := congrArg BitVec.toNat h
    obtain ⟨hp8, hp176, -⟩ := K.hL p hp
    rw [toNat_add_ofNat (by omega), toNat_add_ofNat (by omega)] at h2
    have := hnr p hp
    omega
  · rcases List.mem_cons.mp hf with rfl | hf
    · obtain ⟨j', hj', rfl⟩ := hy
      intro h
      have h2 := congrArg BitVec.toNat h
      rw [toNat_add_ofNat (by omega), toNat_add_ofNat (by omega)] at h2
      omega
    · rw [List.mem_singleton] at hf; subst hf
      obtain ⟨j', hj', rfl⟩ := hy
      have : j' = 0 := by omega
      subst this
      intro h
      have h2 := congrArg BitVec.toNat h
      rw [toNat_add_ofNat (by omega), toNat_add_ofNat (by omega)] at h2
      omega

/-- **A store into the message block** (not at a recorded cell). -/
theorem hn_stMs {E : PtE σ} {En : Env} {S : FS} {rp rl : BitVec 64} {buf n : Nat} {CV : List (BitVec 64)}
    {w wt wa ak nv nkv wm : BitVec 64} {nbl : Nat} {L : List (Nat × BitVec 64)}
    (K : MsK E En S rp rl buf n CV w wt wa ak nv nkv wm nbl L) {off k : Nat} {e : ExpHOL 64}
    (hlen : ∀ s : State σ, PA E En S s → ∀ v, ev s e = some v → (flattenHOL v).length = k)
    (hoff : off % 8 = 0) (hk : off + 8 * k ≤ 176)
    (hnr : ∀ p ∈ L, p.1 + 8 ≤ off ∨ off + 8 * k ≤ p.1) :
    HN (PA E En S) (.store (.op .add [lv (nm "m"), cw off]) e) (PA E En S) :=
  hn_stFBs (a := .op .add [lv (nm "m"), cw off]) (w := wm) (N := 176) (off := off) (k := k) (e := e) K.hfbm K.hppm
    (fun s hpa => evI_add (evI_lv (hpa.2 _ _ K.hm)) (evI_cw s off)) hlen hoff hk K.hrdm (ms_hrl K hk hnr)

/-- **A recording store of one word into the message block.** -/
theorem hn_stMsR {E : PtE σ} {En : Env} {S : FS} {rp rl : BitVec 64} {buf n : Nat} {CV : List (BitVec 64)}
    {w wt wa ak nv nkv wm : BitVec 64} {nbl : Nat} {L : List (Nat × BitVec 64)}
    (K : MsK E En S rp rl buf n CV w wt wa ak nv nkv wm nbl L) {off : Nat} {e : ExpHOL 64} {x : BitVec 64}
    (he : ∀ s : State σ, PA E En S s → EvI s e (.val (.word x)))
    (hoff : off % 8 = 0) (hk : off + 8 ≤ 176) (hnr : ∀ p ∈ L, p.1 + 8 ≤ off ∨ off + 8 ≤ p.1) :
    HN (PA E En S) (.store (.op .add [lv (nm "m"), cw off]) e) (PA E En (addF S [Fct.memw (wm + BitVec.ofNat 64 off) x])) :=
  hn_stFBms (a := .op .add [lv (nm "m"), cw off]) (w := wm) (N := 176) (off := off) K.hfbm K.hppm
    (fun s hpa => evI_add (evI_lv (hpa.2 _ _ K.hm)) (evI_cw s off)) he hoff hk K.hrdm
    (fun s hpa f hf y hy => by simpa using ms_hrl K (k := 1) hk (by simpa using hnr) s hpa f hf y hy 0 (by norm_num))

end InitECandidate.Solver.MemSafe.Ptx
