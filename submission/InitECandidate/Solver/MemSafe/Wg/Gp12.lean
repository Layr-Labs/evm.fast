import InitECandidate.Solver.MemSafe.Wg.Gp11

/-!
# Wg: `process_general_purpose_requests`, a `requests_append` call from the walk
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Wg
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Eb

variable {σ : Type}

/-- The writes of a call of `requests_append` at count `k ≤ 4` lie in `GprD`. -/
theorem raD_sub_gprD {s0 sc : State σ} {bo0 rq0 kx : BitVec 64} (hgw0 : gword s0 (nm "bo") = some bo0)
    (hgwc : gword sc (nm "bo") = some bo0) (hrq0 : rd s0.memory (bo0 + BitVec.ofNat 64 56) = rq0)
    (hrqc : rd sc.memory (bo0 + BitVec.ofNat 64 56) = rq0) (hkc : rd sc.memory (bo0 + BitVec.ofNat 64 64) = kx)
    (hk4 : kx.toNat ≤ 4) : ∀ a, RaD sc a → GprD s0 a := by
  intro a ⟨bo, hbo, ha⟩
  rw [hgwc] at hbo
  cases hbo
  refine ⟨bo0, rq0, hgw0, hrq0, ?_⟩
  rcases ha with ha | ⟨-, j, hj, ha⟩
  · exact Or.inl ha
  · rw [hkc] at hj
    rw [hrqc] at ha
    refine Or.inr ⟨j, by omega, ?_⟩
    exact ha

/-- The cells a call of `requests_append` at count `k ≤ 4` writes are block cells, none of them `bo + 56`. -/
theorem raD_cells {Γ : Gam} {p : Ptrs} (hord : p.Ordered) (hL : Layout guestC p Γ) {sc : State σ} {bo0 rq0 kx : BitVec 64}
    (hgwc : gword sc (nm "bo") = some bo0) (hrqc : rd sc.memory (bo0 + BitVec.ofNat 64 56) = rq0)
    (hkc : rd sc.memory (bo0 + BitVec.ofNat 64 64) = kx) (hk4 : kx.toNat ≤ 4)
    (hb : ∃ o ∈ Γ, o.base = bo0 ∧ o.ty = tBO ∧ 88 ≤ o.size) (hr : ∃ o ∈ Γ, o.base = rq0 ∧ o.ty = tBOS ∧ 128 ≤ o.size)
    {a : BitVec 64} (ha : RaD sc a) : BCell guestC Γ a ∧ a ≠ bo0 + BitVec.ofNat 64 56 := by
  obtain ⟨bo, hbo, ha⟩ := ha
  rw [hgwc] at hbo
  cases hbo
  have hne := ra_ne hord hL hb hr (j := kx.toNat) hk4
  rcases ha with ha | ⟨-, j, hj, ha⟩
  · subst ha
    obtain ⟨M, k, hM, hMt, hk, hp, he⟩ := blk_cell (off := 64) hb tBO_block tBO_prot (by omega) (by omega)
    exact ⟨⟨M, hM, hMt, k, hk, hp, he⟩, fun h => hne.2.2.2.2.2 h.symm⟩
  · rw [hkc] at hj
    rw [hrqc] at ha
    subst hj
    rcases ha with ha | ha
    · subst ha
      obtain ⟨M, k, hM, hMt, hk, hp, he⟩ := blk_cell (off := 16 * kx.toNat) hr tBOS_block tBOS_prot (by omega) (by omega)
      exact ⟨⟨M, hM, hMt, k, hk, hp, he⟩, fun h => hne.1 h.symm⟩
    · subst ha
      obtain ⟨M, k, hM, hMt, hk, hp, he⟩ := blk_cell (off := 16 * kx.toNat + 8) hr tBOS_block tBOS_prot (by omega) (by omega)
      exact ⟨⟨M, hM, hMt, k, hk, hp, he⟩, fun h => hne.2.1 h.symm⟩

section g12
variable {E : EbE σ} {En : Env}

theorem gp_append {Sk Ex : FS} {bo0 rq0 a1 a2 a3 a4 bs ba bk bi bs2 sk kx : BitVec 64} {m : Nat} {args : List (ExpHOL 64)}
    (hm : m ≤ 4) (hkx : kx.toNat ≤ m) (hgw : gword E.s0 (nm "bo") = some bo0)
    (hrq : rd E.s0.memory (bo0 + BitVec.ofNat 64 56) = rq0)
    (hbase : ∀ f, GS E.Γ0 E.s0 bo0 rq0 a1 a2 a3 a4 bs ba bk bi bs2 sk f → Sk f)
    (hAv : Avoid Sk E.Γ0 E.s0 (GprD E.s0) [bo0 + BitVec.ofNat 64 56]) (hT : Tidy zGpr Sk)
    (hargs : ∀ s : State σ, PA E En (fun f => SkX Sk bo0 kx f ∨ Ex f) s → ∀ vs, evs s args = some vs →
      ∃ tb d n : BitVec 64, vs = [.val (.word tb), .val (.word d), .val (.word n)] ∧ n.toNat < 2 ^ 32) :
    HN (PA E En (fun f => SkX Sk bo0 kx f ∨ Ex f)) (callD (nm "requests_append") args)
      (fun t => ∃ kx' : BitVec 64, kx'.toNat ≤ m + 1 ∧ PA E En (SkX Sk bo0 kx') t) := by
  have hsub : ∀ f, Sk f → (fun f => SkX Sk bo0 kx f ∨ Ex f) f := fun f hf => Or.inl (Or.inl hf)
  have hb64 : ∀ f, f = Fct.cellv (bo0 + BitVec.ofNat 64 64) kx → (fun f => SkX Sk bo0 kx f ∨ Ex f) f :=
    fun f hf => Or.inl (Or.inr hf)
  have hg56 : Sk (Fct.cellv (bo0 + BitVec.ofNat 64 56) rq0) := hbase _ (by simp [GS])
  have hgb : Sk (Fct.gobj (nm "bo") bo0 tBO) := hbase _ (by simp [GS])
  have hob : Sk (Fct.obj bo0 tBO 88) := hbase _ (by simp [GS])
  have hor : Sk (Fct.obj rq0 tBOS 128) := hbase _ (by simp [GS])
  refine hn_post (hn_callR2 (E := E) (En := En) (S := fun f => SkX Sk bo0 kx f ∨ Ex f) (Sk := Sk)
    (f := nm "requests_append") (args := args) (W := fun g' => pucW.contains g' = true) (α := Unit)
    callR_ra (gwk_wg (by decide)) hsub (fun _ => fun f => f = Fct.cellv (bo0 + BitVec.ofNat 64 64) (kx + BitVec.ofNat 64 1))
    ⟨?_, ?_, (tidy_gmiss hT zGpr_puc).1, (tidy_gmiss hT zGpr_puc).2⟩ ?_) ?_
  · -- pre
    intro s hs vs hvs callee Γ p hr hL
    obtain ⟨tb, d, n, rfl, hn⟩ := hargs s ⟨⟨Γ, p, hr, hL⟩, hs.2⟩ vs hvs
    have hLe := holdsAll_loc hL callee (s.clock - 1)
    have c64 := hL _ (hb64 _ rfl)
    have c56 := hL _ (hsub _ hg56)
    have gb := hLe _ (hsub _ hgb)
    have ob := hL _ (hsub _ hob)
    have orq := hL _ (hsub _ hor)
    refine ⟨tb, d, n, rfl, hn, bo0, gb.1, ob, ?_, ?_⟩
    · obtain ⟨o, ho, hb, ht, hs'⟩ := orq
      refine ⟨o, ho, ?_, ht, hs'⟩
      show o.base = rd s.memory (bo0 + BitVec.ofNat 64 56)
      rw [c56.1]; exact hb
    · show (rd s.memory (bo0 + BitVec.ofNat 64 64)).toNat ≤ 4
      rw [c64.1]; omega
  · -- dmiss
    intro s hs vs hvs callee Γ p hr hL f hf a ha hD
    have hLe := holdsAll_loc hL callee (s.clock - 1)
    have c64 := hL _ (hb64 _ rfl)
    have c56 := hL _ (hsub _ hg56)
    have gb := hLe _ (hsub _ hgb)
    have ob := hL _ (hsub _ hob)
    have orq := hL _ (hsub _ hor)
    obtain ⟨q, hq, hord, hLay, -⟩ := ebRun_G hr
    obtain rfl : p = q := Option.some.inj ((ebRun_ptrs hr).symm.trans hq)
    have hrc : rd (callEntryStateHOLFinite s callee).memory (bo0 + BitVec.ofNat 64 56) = rq0 := c56.1
    have hkc : rd (callEntryStateHOLFinite s callee).memory (bo0 + BitVec.ofNat 64 64) = kx := c64.1
    have hsub' := raD_sub_gprD (s0 := E.s0) (sc := callEntryStateHOLFinite s callee) (bo0 := bo0) (rq0 := rq0) (kx := kx)
      hgw gb.1 hrq hrc hkc (by omega) a hD
    obtain ⟨hbc, hne56⟩ := raD_cells hord hLay (sc := callEntryStateHOLFinite s callee) (bo0 := bo0) (rq0 := rq0) (kx := kx)
      gb.1 hrc hkc (by omega) ob orq hD
    rcases hAv f hf with (⟨a', -, hd, rfl⟩ | ⟨a', -, rfl⟩) | h
    · have : a = a' := ha
      subst this; exact hd hsub'
    · have hpl := (hL _ (hsub _ hf)).2
      exact plCell_ne_bCell hord hLay hpl hbc (ha : a = _).symm
    · have hmem := h a ha
      simp only [List.mem_singleton] at hmem
      exact hne56 hmem
  · intro s vs callee v st Γ Γ' p p' hr hL hstp hq
    refine ⟨(), ?_⟩
    have hLe := holdsAll_loc hL callee (s.clock - 1)
    have c64 := hL _ (hb64 _ rfl)
    have gb := hLe _ (hsub _ hgb)
    have ob := hL _ (hsub _ hob)
    obtain ⟨bo', hbo', hq1, hq2⟩ := hq
    have gbc : gword (callEntryStateHOLFinite s callee) (nm "bo") = some bo0 := gb.1
    rw [gbc] at hbo'
    cases hbo'
    intro f hf
    subst hf
    have hrc : rd (callEntryStateHOLFinite s callee).memory (bo0 + BitVec.ofNat 64 64) = kx := c64.1
    refine ⟨?_, ?_⟩
    · show rd st.memory (bo0 + BitVec.ofNat 64 64) = kx + BitVec.ofNat 64 1
      rw [hq1]; show rd (callEntryStateHOLFinite s callee).memory _ + _ = _; rw [hrc]
    · obtain ⟨M, k, hM, hMt, hk, hp, he⟩ := blk_cell (off := 64) ob tBO_block tBO_prot (by omega) (by omega)
      exact bCell_ext hstp.1.ext ⟨M, hM, hMt, k, hk, hp, he⟩
  · intro t _ ⟨_, hh⟩
    refine ⟨kx + BitVec.ofNat 64 1, ?_, pa_mono hh (fun _ _ h => h) (fun f hf => hf)⟩
    have h1 : (BitVec.ofNat 64 1).toNat = 1 := rfl
    rw [BitVec.toNat_add, h1, Nat.mod_eq_of_lt (by omega)]
    omega

end g12

end InitECandidate.Solver.MemSafe.Wg
