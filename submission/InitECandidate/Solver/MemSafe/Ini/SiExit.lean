import InitECandidate.Solver.MemSafe.Ini.SiAdopt

/-!
# `state_init`: the exit
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Ini
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Hooks InitECandidate.Solver.MemSafe.Trie
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.Wit

variable {σ : Type}

theorem blk_conds {a : Act σ} {q : Ptrs} {Γ : Gam} {b : BitVec 64} {n : Nat} (hb : BlkF a q Γ b n)
    (hn0 : 0 < n) (hn8 : n % 8 = 0) (hord : q.Ordered) :
    heapBase ≤ b.toNat ∧ b.toNat + n ≤ q.hp := by
  have h1 := (hb.2 b ⟨by have := hb.1; omega, by omega, by omega⟩).2.1
  have hk : 8 * (n / 8 - 1) + 8 ≤ n := by omega
  have hc := blkF_cell hord hb hk
  have hnw := blkF_nowrap hord hb
  have e : (b + BitVec.ofNat 64 (8 * (n / 8 - 1))).toNat = b.toNat + 8 * (n / 8 - 1) := by
    rw [BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (a := 8 * (n / 8 - 1)) (by omega),
      Nat.mod_eq_of_lt (by omega)]
  have h2 := (hb.2 _ hc).2.1
  rw [e] at h2
  have h8 := hord.2.2.2.2.2.1
  have h8b := hb.1
  obtain ⟨-, -, -, -, -, -, -, -⟩ := hord
  refine ⟨h1.1, ?_⟩
  omega

theorem inO_bounds {x : Obj} {a : BitVec 64} : InO x a ↔ x.lo ≤ a.toNat ∧ a.toNat < x.hi := Iff.rfl

/-- One raw block adopted as an object of type `ty` (all hook work is the caller's `hwf`). -/
theorem g_add_blk {Γc : Gam} {u : State σ} {q : Ptrs}
    (hG : G Types.guestC (guestHooksR (σ := σ)) Γc u) (hq : ptrsOf u = some q) {x : Obj}
    (hal : x.lo % 8 = 0) (hs8 : x.size % 8 = 0) (hpos : 0 < x.size)
    (hmin : (Types.guestC.ty x.ty).minSz ≤ x.size) (hreg : (Types.guestC.ty x.ty).region = .heap)
    (hlive : heapBase ≤ x.lo ∧ x.lo + x.size ≤ q.hp) (hdisj : ∀ a : BitVec 64, InO x a → ¬ InObj Γc a.toNat)
    (hfit : ∀ k, x.HasSlot k → Fits (Γc ++ [x]) ((Types.guestC.ty x.ty).slot k) (rd u.memory (x.cell k)))
    (htag : Types.guestC.tags.lookup x.ty = none) (hwf : (guestHooksR (σ := σ)).wf (Γc ++ [x]) u x) :
    G Types.guestC (guestHooksR (σ := σ)) (Γc ++ [x]) u :=
  G_addObj guestHooksR_lawful guestHooksR_mono hG hal hs8 hpos hmin
    (fun p hp => by rw [hq] at hp; cases hp; rw [hreg]; exact hlive) hdisj hfit htag hwf

theorem fresh_blk {a : Act σ} {q : Ptrs} {Γ : Gam} {b : BitVec 64} {n : Nat} (hb : BlkF a q Γ b n)
    (hord : q.Ordered) (hc : heapBase ≤ b.toNat ∧ b.toNat + n ≤ q.hp) :
    ∀ x : BitVec 64, b.toNat ≤ x.toNat → x.toNat < b.toNat + n → Fresh a.p0 q x := by
  intro x h1 h2
  have hcx : (BitVec.ofNat 64 (x.toNat / 8 * 8)).toNat = x.toNat / 8 * 8 := by
    have := x.isLt
    rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)]
  have h8 := hb.1
  have hq8 := hord.2.2.2.2.2.1
  obtain ⟨-, hl, hna⟩ := hb.2 (BitVec.ofNat 64 (x.toNat / 8 * 8))
    ⟨by rw [hcx]; omega, by rw [hcx]; omega, by rw [hcx]; omega⟩
  rw [hcx] at hl hna
  left
  refine ⟨?_, by omega⟩
  by_contra hlt
  exact hna (Or.inl ⟨hl.1, by omega⟩)

/-- What `state_init` leaves (besides `G`). -/
def SiPost (Γ' : Gam) (t : State σ) : Prop :=
  (∃ w, gword t (nm "ws") = some w ∧ Fits Γ' (.nptr Types.tWSR) w) ∧
  (∃ w, gword t (nm "bs") = some w ∧ Fits Γ' (.nptr Types.tBS) w ∧ nullMax ≤ w.toNat) ∧
  (∃ w, gword t (nm "sk_buf") = some w ∧ Fits Γ' (.nptr Types.tB64) w ∧ nullMax ≤ w.toNat) ∧
  (∃ w, gword t (nm "journal") = some w ∧ Fits Γ' (.nptr Types.tJOURNAL) w ∧ nullMax ≤ w.toNat) ∧
  t.globals.lookup (nm "journal_n") = some (.val (.word 0)) ∧
  t.globals.lookup (nm "ts") = some (.val (.word 0))

theorem g_exit {a : Act σ} {db : BitVec 64} (c : Cx a db) {cd : BitVec 64}
    (hNDc : Hooks.NdbR a.Γ0 a.s0.memory cd) {t : State σ} (hF : FinG a db cd t (.val (.word 0))) :
    ∃ (Γ' : Gam) (q : Ptrs), Ext a.Γ0 Γ' ∧ NewFresh a.Γ0 Γ' a.p0 q ∧ ptrsOf t = some q ∧ a.p0.Mono q ∧
      G Types.guestC (guestHooksR (σ := σ)) Γ' t ∧ SiPost Γ' t := by
  obtain ⟨-, kn, S, Jb, Γ, q, hD, hK, hext, hh, hS, hjn, hts, hcap⟩ := hF
  obtain ⟨-, hWs, hBs, hwv, hbv, hSs, hJs⟩ := hS
  obtain ⟨⟨W, hW⟩, ⟨B, hB⟩, hw0, hw2, hwall, hball⟩ := hK
  obtain ⟨hlkW, hblW⟩ := hWs W hW
  obtain ⟨hlkB, hblB, -⟩ := hBs B hB
  obtain ⟨hlkS, hblS⟩ := hSs S rfl
  obtain ⟨hlkJ, hblJ⟩ := hJs Jb rfl
  have hord := heap_ord hh
  have hLq := Dn.layout_of_heap c.haC hh
  have hG0 : G Types.guestC (guestHooksR (σ := σ)) Γ (gz t) := by
    have := hh.1; rw [c.haC, c.haH] at this; exact this
  have hGam := Hooks.gamOK_of_layout hLq
  have hpu : ptrsOf (gz t) = some q := hh.2.1
  have hq8 : q.hp % 8 = 0 := hord.2.2.2.2.2.1
  have hqe : q.hp ≤ heapEnd := hord.2.1
  have hext0 : Ext Γ (Γ ++ [(⟨W, Types.tWSR, 40⟩ : Obj)]) := ext_snoc' Γ _
  have wcell : ∀ k, k < 5 → Fits Γ (wsK k) (rd t.memory (W + BitVec.ofNat 64 (8 * k))) := by
    intro k hk
    obtain ⟨v, hv⟩ := hwall k hk
    obtain ⟨W', hW', -, hr, hf⟩ := hwv k v hv
    have : W' = W := Option.some.inj (hW'.symm.trans hW)
    subst this
    rw [hr]; exact hf
  have bcell : ∀ k, k < 10 → Fits Γ (bsK k) (rd t.memory (B + BitVec.ofNat 64 (8 * k))) := by
    intro k hk
    obtain ⟨v, hv⟩ := hball k hk
    obtain ⟨B', hB', -, hr, hf⟩ := hbv k v hv
    have : B' = B := Option.some.inj (hB'.symm.trans hB)
    subst this
    rw [hr]; exact hf
  have wr0 : rd t.memory W = db := by
    obtain ⟨W', hW', -, hr, -⟩ := hwv 0 db hw0
    have : W' = W := Option.some.inj (hW'.symm.trans hW)
    subst this; simpa using hr
  have wr2 : rd t.memory (W + BitVec.ofNat 64 16) = cd := by
    obtain ⟨W', hW', -, hr, -⟩ := hwv 2 cd hw2
    have : W' = W := Option.some.inj (hW'.symm.trans hW)
    subst this; exact hr
  have hb64' : ∀ y ∈ Γ, y.hi ≤ 2 ^ 64 := fun y hy => by
    have := obj_hi hord hLq hy
    have : scratchEnd < 2 ^ 64 := by decide
    omega
  -- the `ws` block
  have cW := blk_conds hblW (by decide) (by decide) hord
  have hdisW : ∀ x : BitVec 64, InO (⟨W, Types.tWSR, 40⟩ : Obj) x → ¬ InObj Γ x.toNat := by
    intro x hx
    have := disj_fresh hblW [] (by simp) hGam x hx.1 hx.2
    simpa using this
  have hGam1 : GamOK (Γ ++ [(⟨W, Types.tWSR, 40⟩ : Obj)]) :=
    gamOK_snoc_of hGam (by show W.toNat % 8 = 0; exact hblW.1) (by show 40 % 8 = 0; decide)
      (by show 0 < 40; decide) (by show (Types.guestC.ty Types.tWSR).minSz ≤ 40; decide)
      (fun h => absurd h (by show ¬ (Types.guestC.ty Types.tWSR).region = .scratch; decide))
      (by
        show W.toNat + 40 ≤ 2 ^ 64
        have : heapEnd < 2 ^ 64 := by decide
        have := cW.2
        omega) hb64' hdisW
  have hNd : Hooks.NdbR Γ t.memory db :=
    ndbR_heap (s := gz t) c.ha c.haC c.hcaps c.hargs c.hL0 hh hext c.hND
  have hNc : Hooks.NdbR Γ t.memory cd :=
    ndbR_heap (s := gz t) c.ha c.haC c.hcaps c.hargs c.hL0 hh hext hNDc
  have hwfW : (guestHooksR (σ := σ)).wf (Γ ++ [(⟨W, Types.tWSR, 40⟩ : Obj)]) (gz t) ⟨W, Types.tWSR, 40⟩ :=
    wf_of_wsRW rfl (List.mem_append_right _ (List.mem_singleton_self _)) hGam1
      (wsRW_snoc (by show W.toNat + 40 ≤ heapEnd; have := cW.2; omega)
        (by show Hooks.NdbR Γ t.memory (rd t.memory W); rw [wr0]; exact hNd)
        (by show Hooks.NdbR Γ t.memory (rd t.memory (W + BitVec.ofNat 64 16)); rw [wr2]; exact hNc))
  have G1 := g_add_blk hG0 hpu (x := ⟨W, Types.tWSR, 40⟩) (by show W.toNat % 8 = 0; exact hblW.1)
    (by show 40 % 8 = 0; decide) (by show 0 < 40; decide)
    (by show (Types.guestC.ty Types.tWSR).minSz ≤ 40; decide)
    (by show (Types.guestC.ty Types.tWSR).region = .heap; decide) ⟨cW.1, cW.2⟩ hdisW
    (fun k hk => by
      have hk5 : k < 5 := by unfold Obj.HasSlot at hk; simp only at hk; omega
      exact fits_ext hext0 (wcell k hk5)) (by show Types.guestC.tags.lookup Types.tWSR = none; decide) hwfW
  -- the `bs` block
  have cB := blk_conds hblB (by decide) (by decide) hord
  have dWB := hD.1 W B hW hB
  have dWS := hD.2.1 W S hW rfl
  have dWJ := hD.2.2.1 W Jb hW rfl
  have dBS := hD.2.2.2.1 B S hB rfl
  have dBJ := hD.2.2.2.2.1 B Jb hB rfl
  have dSJ := hD.2.2.2.2.2 S Jb rfl rfl
  have hdisB : ∀ x : BitVec 64, InO (⟨B, Types.tBS, 80⟩ : Obj) x → ¬ InObj (Γ ++ [(⟨W, Types.tWSR, 40⟩ : Obj)]) x.toNat := by
    intro x hx
    exact disj_fresh hblB [(⟨W, Types.tWSR, 40⟩ : Obj)] (by
      intro y hy
      simp only [List.mem_singleton] at hy
      subst hy
      show W.toNat + 40 ≤ B.toNat ∨ B.toNat + 80 ≤ W.toNat
      exact dWB) hGam x hx.1 hx.2
  have hext1 : Ext Γ (Γ ++ [(⟨W, Types.tWSR, 40⟩ : Obj)] ++ [(⟨B, Types.tBS, 80⟩ : Obj)]) :=
    ext_trans hext0 (ext_snoc' _ _)
  have G2 := g_add_blk G1 hpu (x := ⟨B, Types.tBS, 80⟩) (by show B.toNat % 8 = 0; exact hblB.1)
    (by show 80 % 8 = 0; decide) (by show 0 < 80; decide)
    (by show (Types.guestC.ty Types.tBS).minSz ≤ 80; decide)
    (by show (Types.guestC.ty Types.tBS).region = .heap; decide) ⟨cB.1, cB.2⟩ hdisB
    (fun k hk => by
      have hk10 : k < 10 := by unfold Obj.HasSlot at hk; simp only at hk; omega
      exact fits_ext hext1 (bcell k hk10))
    (by show Types.guestC.tags.lookup Types.tBS = none; decide)
    (wf_plain recTy_BS (by decide) rfl)
  -- the `sk_buf` block
  have cS := blk_conds hblS (by decide) (by decide) hord
  have hdisS : ∀ x : BitVec 64, InO (⟨S, Types.tB64, 64⟩ : Obj) x →
      ¬ InObj (Γ ++ [(⟨W, Types.tWSR, 40⟩ : Obj)] ++ [(⟨B, Types.tBS, 80⟩ : Obj)]) x.toNat := by
    intro x hx
    have := disj_fresh hblS [(⟨W, Types.tWSR, 40⟩ : Obj), (⟨B, Types.tBS, 80⟩ : Obj)] (by
      intro y hy
      simp only [List.mem_cons, List.not_mem_nil, or_false] at hy
      rcases hy with rfl | rfl
      · show W.toNat + 40 ≤ S.toNat ∨ S.toNat + 64 ≤ W.toNat
        exact dWS
      · show B.toNat + 80 ≤ S.toNat ∨ S.toNat + 64 ≤ B.toNat
        exact dBS) hGam x hx.1 hx.2
    simpa using this
  have hext2 : Ext Γ (Γ ++ [(⟨W, Types.tWSR, 40⟩ : Obj)] ++ [(⟨B, Types.tBS, 80⟩ : Obj)] ++
      [(⟨S, Types.tB64, 64⟩ : Obj)]) := ext_trans hext1 (ext_snoc' _ _)
  have G3 := g_add_blk G2 hpu (x := ⟨S, Types.tB64, 64⟩) (by show S.toNat % 8 = 0; exact hblS.1)
    (by show 64 % 8 = 0; decide) (by show 0 < 64; decide)
    (by show (Types.guestC.ty Types.tB64).minSz ≤ 64; decide)
    (by show (Types.guestC.ty Types.tB64).region = .heap; decide) ⟨cS.1, cS.2⟩ hdisS
    (fun k hk => by
      show Fits _ ((Types.guestC.ty Types.tB64).slot k) _
      rw [b64_scalar k]; trivial)
    (by show Types.guestC.tags.lookup Types.tB64 = none; decide)
    (wf_plain recTy_B64 (by decide) rfl)
  -- the `journal` block
  have cJ := blk_conds hblJ (by decide) (by decide) hord
  have hdisJ : ∀ x : BitVec 64, InO (⟨Jb, Types.tJOURNAL, 16777216⟩ : Obj) x →
      ¬ InObj (Γ ++ [(⟨W, Types.tWSR, 40⟩ : Obj)] ++ [(⟨B, Types.tBS, 80⟩ : Obj)] ++
        [(⟨S, Types.tB64, 64⟩ : Obj)]) x.toNat := by
    intro x hx
    have := disj_fresh hblJ [(⟨W, Types.tWSR, 40⟩ : Obj), (⟨B, Types.tBS, 80⟩ : Obj),
      (⟨S, Types.tB64, 64⟩ : Obj)] (by
      intro y hy
      simp only [List.mem_cons, List.not_mem_nil, or_false] at hy
      rcases hy with rfl | rfl | rfl
      · show W.toNat + 40 ≤ Jb.toNat ∨ Jb.toNat + 16777216 ≤ W.toNat
        exact dWJ
      · show B.toNat + 80 ≤ Jb.toNat ∨ Jb.toNat + 16777216 ≤ B.toNat
        exact dBJ
      · show S.toNat + 64 ≤ Jb.toNat ∨ Jb.toNat + 16777216 ≤ S.toNat
        exact dSJ) hGam x hx.1 hx.2
    simpa using this
  have hJb0 : Jb.toNat ≠ 0 := by
    have : 0 < heapBase := by decide
    have := cJ.1
    omega
  have hjrW : jrW (Γ ++ [(⟨W, Types.tWSR, 40⟩ : Obj)] ++ [(⟨B, Types.tBS, 80⟩ : Obj)] ++
      [(⟨S, Types.tB64, 64⟩ : Obj)] ++ [(⟨Jb, Types.tJOURNAL, 16777216⟩ : Obj)]) (gz t)
      ⟨Jb, Types.tJOURNAL, 16777216⟩ := by
    intro hj
    have : gword (gz t) gJ = some 0 := gword_gz_in (by simp [hid_mem, Hooks.gJ])
    rw [this] at hj
    have h0 : (0 : BitVec 64) = Jb := Option.some.inj hj
    exfalso
    apply hJb0
    rw [← h0]; rfl
  have G4 := g_add_blk G3 hpu (x := ⟨Jb, Types.tJOURNAL, 16777216⟩) (by show Jb.toNat % 8 = 0; exact hblJ.1)
    (by show 16777216 % 8 = 0; decide) (by show 0 < 16777216; decide)
    (by show (Types.guestC.ty Types.tJOURNAL).minSz ≤ 16777216; decide)
    (by show (Types.guestC.ty Types.tJOURNAL).region = .heap; decide) ⟨cJ.1, cJ.2⟩ hdisJ
    (fun k hk => by
      show Fits _ ((Types.guestC.ty Types.tJOURNAL).slot k) _
      rw [Types.journal_prot k]; trivial)
    (by show Types.guestC.tags.lookup Types.tJOURNAL = none; decide)
    (wf_jr rfl hjrW)
  have hext4 : Ext a.Γ0 (Γ ++ [(⟨W, Types.tWSR, 40⟩ : Obj)] ++ [(⟨B, Types.tBS, 80⟩ : Obj)] ++
      [(⟨S, Types.tB64, 64⟩ : Obj)] ++ [(⟨Jb, Types.tJOURNAL, 16777216⟩ : Obj)]) :=
    ext_trans hext (ext_trans hext2 (ext_snoc' _ _))
  have hmemW : (⟨W, Types.tWSR, 40⟩ : Obj) ∈ (Γ ++ [(⟨W, Types.tWSR, 40⟩ : Obj)] ++ [(⟨B, Types.tBS, 80⟩ : Obj)] ++
      [(⟨S, Types.tB64, 64⟩ : Obj)] ++ [(⟨Jb, Types.tJOURNAL, 16777216⟩ : Obj)]) := by simp
  have hmemB : (⟨B, Types.tBS, 80⟩ : Obj) ∈ (Γ ++ [(⟨W, Types.tWSR, 40⟩ : Obj)] ++ [(⟨B, Types.tBS, 80⟩ : Obj)] ++
      [(⟨S, Types.tB64, 64⟩ : Obj)] ++ [(⟨Jb, Types.tJOURNAL, 16777216⟩ : Obj)]) := by simp
  have hmemS : (⟨S, Types.tB64, 64⟩ : Obj) ∈ (Γ ++ [(⟨W, Types.tWSR, 40⟩ : Obj)] ++ [(⟨B, Types.tBS, 80⟩ : Obj)] ++
      [(⟨S, Types.tB64, 64⟩ : Obj)] ++ [(⟨Jb, Types.tJOURNAL, 16777216⟩ : Obj)]) := by simp
  have hmemJ : (⟨Jb, Types.tJOURNAL, 16777216⟩ : Obj) ∈ (Γ ++ [(⟨W, Types.tWSR, 40⟩ : Obj)] ++ [(⟨B, Types.tBS, 80⟩ : Obj)] ++
      [(⟨S, Types.tB64, 64⟩ : Obj)] ++ [(⟨Jb, Types.tJOURNAL, 16777216⟩ : Obj)]) := by simp
  have hGl4 := G4
  obtain ⟨p4, hp4, hord4, hL4, -, -, hGlob4, -⟩ := hGl4
  have hGam4 := Hooks.gamOK_of_layout hL4
  have hjn' : (BitVec.ofNat 64 524288).toNat = 524288 := by decide
  have hGt : G Types.guestC (guestHooksR (σ := σ)) (Γ ++ [(⟨W, Types.tWSR, 40⟩ : Obj)] ++ [(⟨B, Types.tBS, 80⟩ : Obj)] ++
      [(⟨S, Types.tB64, 64⟩ : Obj)] ++ [(⟨Jb, Types.tJOURNAL, 16777216⟩ : Obj)]) t := by
    refine G_swap G4 rfl rfl rfl (ptrsOf_gz t).symm ?_ ?_
    · intro g k hk
      by_cases hg : g ∈ hid
      · rcases hid_mem.mp hg with rfl | rfl | rfl | rfl
        · rw [Types.gt_ws] at hk; cases hk
          exact ⟨W, AllocImpl.gword_of_lookup hlkW, Or.inr ⟨_, hmemW, rfl, rfl⟩⟩
        · rw [Types.gt_bs] at hk; cases hk
          exact ⟨B, AllocImpl.gword_of_lookup hlkB, Or.inr ⟨_, hmemB, rfl, rfl⟩⟩
        · rw [Types.gt_sk_buf] at hk; cases hk
          exact ⟨S, AllocImpl.gword_of_lookup hlkS, Or.inr ⟨_, hmemS, rfl, rfl⟩⟩
        · rw [Types.gt_journal] at hk; cases hk
          exact ⟨Jb, AllocImpl.gword_of_lookup hlkJ, Or.inr ⟨_, hmemJ, rfl, rfl⟩⟩
      · obtain ⟨v, hv, hf⟩ := hGlob4 g k hk
        exact ⟨v, by rw [← gword_gz_notin (s := t) hg]; exact hv, hf⟩
    · intro o ho hjt hj
      have hjw : gword t gJ = some Jb := AllocImpl.gword_of_lookup hlkJ
      rw [hjw] at hj
      have hb : Jb = o.base := Option.some.inj hj
      have heq : o = ⟨Jb, Types.tJOURNAL, 16777216⟩ := (gam_base_eq hGam4 ho hmemJ hb.symm)
      subst heq
      refine ⟨hmemJ, hGam4, 0, BitVec.ofNat 64 524288, AllocImpl.gword_of_lookup hjn,
        AllocImpl.gword_of_lookup hcap, by simp, by rw [hjn'], ?_,
        fun i hi => by simp at hi⟩
      rw [hjn']
      show Jb.toNat + 32 * 524288 ≤ scratchEnd
      have := cJ.2
      have : heapEnd ≤ scratchEnd := by decide
      omega
  have hnf4 : NewFresh a.Γ0 (Γ ++ [(⟨W, Types.tWSR, 40⟩ : Obj)] ++ [(⟨B, Types.tBS, 80⟩ : Obj)] ++
      [(⟨S, Types.tB64, 64⟩ : Obj)] ++ [(⟨Jb, Types.tJOURNAL, 16777216⟩ : Obj)]) a.p0 q := by
    intro o ho x h1 h2
    simp only [List.append_assoc, List.mem_append, List.mem_singleton] at ho
    rcases ho with ho | rfl | rfl | rfl | rfl
    · rcases hh.2.2.2.2.1 o ho x h1 h2 with h | h
      · exact Or.inl h
      · exact Or.inr h
    · exact Or.inr (fresh_blk hblW hord cW x h1 h2)
    · exact Or.inr (fresh_blk hblB hord cB x h1 h2)
    · exact Or.inr (fresh_blk hblS hord cS x h1 h2)
    · exact Or.inr (fresh_blk hblJ hord cJ x h1 h2)
  refine ⟨_, q, hext4, hnf4, by rw [← ptrsOf_gz]; exact hpu, hh.2.2.1, hGt, ?_⟩
  refine ⟨⟨W, AllocImpl.gword_of_lookup hlkW, Or.inr ⟨_, hmemW, rfl, rfl⟩⟩,
    ⟨B, AllocImpl.gword_of_lookup hlkB, Or.inr ⟨_, hmemB, rfl, rfl⟩, by
      have h1 := cB.1
      have h2 : nullMax ≤ heapBase := by decide
      omega⟩,
    ⟨S, AllocImpl.gword_of_lookup hlkS, Or.inr ⟨_, hmemS, rfl, rfl⟩, by
      have h1 := cS.1
      have h2 : nullMax ≤ heapBase := by decide
      omega⟩,
    ⟨Jb, AllocImpl.gword_of_lookup hlkJ, Or.inr ⟨_, hmemJ, rfl, rfl⟩, by
      have h1 := cJ.1
      have h2 : nullMax ≤ heapBase := by decide
      omega⟩, hjn, hts⟩

end InitECandidate.Solver.MemSafe.Ini

#print axioms InitECandidate.Solver.MemSafe.Ini.g_exit
