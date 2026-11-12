import InitECandidate.Solver.MemSafe.Dn.LoopAsm

set_option autoImplicit false

/-!
# `_decode_witness_node_body`'s summary (D3)

**`sumSpecA_decode_witness_node_body_G`**: at `guestHooksR`, under the cost lane's precondition
`DecPre NdbW` (the slice lies in the heap below `H ≤ heap_ptr`, the node DB is `NdbW` below `H`),
the body is memory-safe, its new objects are fresh heap nodes (`ScrOld` on every result), and it
returns a `nodeU` word. The seven declarations establish `WI ∧ JG`; the loop keeps it
(`wdLoop_G`); on exit `go = 0` gives `result`'s fit.
-/

set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false

namespace InitECandidate.Solver.MemSafe.Dn
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers

variable {σ : Type}

/-- Word locals `ns[i] ↦ ws[i]`. -/
def LkL (ns : List MlS) (ws : List (BitVec 64)) (m : LocalsH) : Prop :=
  ∀ (i : Nat) (y : MlS) (w : BitVec 64), ns[i]? = some y → ws[i]? = some w →
    m.lookup y = some (.val (.word w))

theorem lkL_cons {ns : List MlS} {ws : List (BitVec 64)} {s : State σ} (h : LkL ns ws s.locals)
    {x : MlS} (hx : x ∉ ns) (w : BitVec 64) :
    LkL (x :: ns) (w :: ws) (setVarHOLFinite x (.val (.word w)) s).locals := by
  intro i y w' hy hw
  rcases i with _ | i
  · simp only [List.getElem?_cons_zero, Option.some.injEq] at hy hw
    subst hy hw
    simp [setVarHOLFinite, FUPDATE]
  · simp only [List.getElem?_cons_succ] at hy hw
    have hne : y ≠ x := fun e => hx (e ▸ List.mem_of_getElem? hy)
    exact lk_keep hne (h i y w' hy hw)

theorem retOK_fits1 {Γ : Gam} {p p' : Ptrs} {vs : List (ValueHOL 64)} {k : FK} {R : BitVec 64}
    (h : Fits Γ k R) : RetOK Γ p p' vs [.fits k] (.val (.word R)) := by
  intro i r w hr hw
  rcases i with _ | i
  · simp only [List.getElem?_cons_zero, Option.some.injEq] at hr
    subst hr
    simp only [flattenHOL, List.getElem?_cons_zero, Option.some.injEq, HolWordLab.word.injEq] at hw
    subst hw
    exact h
  · simp at hr

def nsB : List MlS := [nm "go", nm "slot", nm "mode", nm "cur_n", nm "cur_p", nm "result", nm "top",
  nm "db", nm "p", nm "n"]

/-- The entry's memory facts. -/
def EB (Γ0 : Gam) (p0 : Ptrs) (DB Q N : BitVec 64) (H : Nat) (Γ : Gam) (q : Ptrs) (M : Mem) : Prop :=
  Γ = Γ0 ∧ q = p0 ∧ Spec.Mpt.Leaves.NdbW DB H M ∧ heapBase ≤ Q.toNat ∧ Q.toNat + N.toNat ≤ H ∧
    H ≤ p0.hp ∧ Hooks.NdbR Γ M DB ∧ Hooks.VInR Types.tVAL Γ Q N

/-- **The loop and the return**, from the seven declarations' state. -/
theorem wdTail_G {vs : List (ValueHOL 64)} {s0 : State σ} {Γ0 : Gam} {p0 : Ptrs}
    (ha : ActOK (aB vs s0 Γ0 p0) guestCtx) (hL0 : Layout Types.guestC p0 Γ0)
    (hsp0 : p0.sp ≤ scratchEnd) {DB Q N : BitVec 64} {H : Nat} :
    HoareG σ guestCtx (GI (aB vs s0 Γ0 p0) (LkL nsB [BitVec.ofNat 64 1, BitVec.ofNat 64 0,
        BitVec.ofNat 64 1, N, Q, BitVec.ofNat 64 0, BitVec.ofNat 64 0, DB, Q, N])
        (EB Γ0 p0 DB Q N H))
      (.seq (.while Spec.Mpt.goCond Spec.Mpt.Dec.wdLoopBody) (.return (lv (nm "result"))))
      (GP (aB vs s0 Γ0 p0) (fun _ => False) (fun _ _ _ => True) (RvB (aB vs s0 Γ0 p0))) := by
  have hX := (Rec.foldOK_guestR (σ := σ)).hX
  have hri0 := Spec.Mpt.Dec.freshFoot_weaken (Q' := fun _ _ _ _ _ => True)
    (Spec.Mpt.Leaves.freshFoot_rlp_item (σ := σ) hX) fun _ _ _ _ _ _ => trivial
  have hrs := Spec.Mpt.Dec.freshFoot_resolve_step hX Spec.Mpt.Leaves.wFrame_ndbW hri0
    (Spec.Mpt.Leaves.freshFoot_nodedb_lookup hX H)
  refine hoareG_seq (hoareG_pre (wdLoop_G ha hL0 hsp0 Spec.Mpt.Leaves.wFrame_ndbW (hdsG H) hrs hri0
      (DB := DB)) (fun t _ h => ?_))
    (fun r t _ hr _ h => ⟨fun h' => absurd h' hr, h.2⟩) ?_
  · obtain ⟨hl, Γ, q, he, hh, hsc, hΓ, hq, hW, hQ1, hQ2, hH, hND, hVQ⟩ := h
    subst Γ
    subst q
    have hord := heap_ord hh
    refine ⟨⟨p0, BitVec.ofNat 64 0, BitVec.ofNat 64 0, BitVec.ofNat 64 1, Q, N, BitVec.ofNat 64 1, H,
      hh.2.1, ⟨hl 7 _ _ rfl rfl, hl 6 _ _ rfl rfl, hl 5 _ _ rfl rfl, hl 2 _ _ rfl rfl,
        fun h => absurd h (by decide), fun _ => ⟨hl 3 _ _ rfl rfl, hl 4 _ _ rfl rfl⟩, hl 0 _ _ rfl rfl⟩,
      hsp0, by omega, hW, hord, le_rfl, le_rfl, hH, Spec.Mpt.Dec.wChain_zero _ _ _ _ _,
      fun h => absurd rfl h, fun _ => ⟨hQ1, hQ2⟩, fun h => absurd h (by decide)⟩,
      BitVec.ofNat 64 0, BitVec.ofNat 64 0, BitVec.ofNat 64 1, BitVec.ofNat 64 1, hl 6 _ _ rfl rfl,
      hl 5 _ _ rfl rfl, hl 2 _ _ rfl rfl, hl 0 _ _ rfl rfl, fun h => absurd h (by decide), Γ0, p0, he,
      hh, hsc, frG_zero _ _ _ _ _ _, fun h => absurd rfl h, ⟨DB, hl 7 _ _ rfl rfl, hND⟩,
      fun _ => ⟨Q, N, hl 4 _ _ rfl rfl, hl 3 _ _ rfl rfl, hVQ⟩⟩
  · refine hoareG_pre (P := fun t => ∃ R : BitVec 64, GI (aB vs s0 Γ0 p0)
        (fun m => m.lookup (nm "result") = some (.val (.word R))) (fun Γ _ _ => Fits Γ Types.nodeU R) t)
      (hoareG_ex fun R => gp_ret ha.hH (fun s Γ q _ hL _ _ hE v hv => ?_)) (fun t _ h => ?_)
    · rw [ev_lw hL] at hv
      cases hv
      exact retOK_fits1 hE
    · obtain ⟨⟨T, R, Mo, G, hT, hR, hM, hG, hGM, Γ, q, he, hh, hsc, hF, hfit, -, -⟩, hg0⟩ := h.1 rfl
      obtain rfl := lk_eq hG hg0
      obtain ⟨h1, h2⟩ := hGM rfl
      exact ⟨R, hR, Γ, q, he, hh, hsc, hfit h1 h2⟩

/-- The body's precondition: the cost lane's `DecPre NdbW`, and the typed facts the decoder's stores
need (stage 2b): the node DB is `NdbR` and the input slice lies in a `tVAL` object. -/
def BdPre (vs : List (ValueHOL 64)) (s : State σ) (Γ : Gam) : Prop :=
  Spec.Mpt.Dec.DecPre Spec.Mpt.Leaves.NdbW vs s ∧ ∃ DB Q N : BitVec 64,
    vs = [.val (.word DB), .val (.word Q), .val (.word N)] ∧ Hooks.NdbR Γ s.memory DB ∧
    Hooks.VInR Types.tVAL Γ Q N

/-- **`_decode_witness_node_body`'s summary** at `guestHooksR`. -/
theorem sumSpecA_decode_witness_node_body_G :
    SumSpecA σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "_decode_witness_node_body")
      bdSig BdPre (fun _ _ _ _ => False)
      (fun vs s Γ r t Γ' => ScrOld Γ Γ' ∧ ∀ v, r = .returned v → ∀ p0 p', ptrsOf s = some p0 →
        ptrsOf t = some p' → True) := by
  have hF := Rec.foldOK_guestR (σ := σ)
  have hX := hF.hX
  refine sumSpecA_of_gp (Rx := fun _ _ _ _ _ _ => True) hF.hH hF.hC hF.hal hF.hAC hF.hNS ?_
  intro vs body callee rs hl s0 _ hloc Γ0 p0 hpre ha hh
  rw [hX] at hl
  obtain ⟨rfl, -, A, B, C, rfl, -, -, -, hA, hB, hC'⟩ :=
    Spec.lookupCode_three Spec.Mpt.Dec.code_decode_witness_node_body (by decide) (by decide)
      (by decide) hl
  obtain ⟨⟨DB, Q, N, hvs, -, H, pq, hpq, hQb, hQN, hHp, hW⟩, DB', Q', N', hvs', hND, hVQ⟩ := hpre
  rw [hvs] at hvs'
  simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hvs hvs'
  obtain ⟨rfl, rfl, rfl⟩ := hvs'
  obtain ⟨rfl, rfl, rfl⟩ := hvs
  rw [hh.2.1] at hpq
  cases hpq
  have hL0 : Layout Types.guestC p0 Γ0 := by
    obtain ⟨p1, hp1, -, hL, -⟩ := hh.1
    rw [hh.2.1] at hp1
    cases hp1
    exact hL
  have hsp0 : p0.sp ≤ scratchEnd := (heap_ord hh).2.2.2.2.1
  refine hoareG_conseq (P := GI (aB [.val (.word DB), .val (.word Q), .val (.word N)] s0 Γ0 p0)
      (LkL [nm "db", nm "p", nm "n"] [DB, Q, N]) (EB Γ0 p0 DB Q N H))
    (Q := GP (aB [.val (.word DB), .val (.word Q), .val (.word N)] s0 Γ0 p0) (fun _ => False)
      (fun _ _ _ => True) (RvB (aB [.val (.word DB), .val (.word Q), .val (.word N)] s0 Γ0 p0)))
    ?_ ?_ ?_
  rotate_left
  · intro t _ ht
    subst ht
    refine ⟨fun i y w hy hw => ?_, Γ0, p0, ext_refl _, hh, scrOld_refl _, rfl, rfl, hW, hQb, hQN, hHp, hND, hVQ⟩
    rw [hloc]
    rcases i with _ | _ | _ | i
    · simp only [List.getElem?_cons_zero, Option.some.injEq] at hy hw; subst hy hw; exact hA
    · simp only [List.getElem?_cons_succ, List.getElem?_cons_zero, Option.some.injEq] at hy hw
      subst hy hw; exact hB
    · simp only [List.getElem?_cons_succ, List.getElem?_cons_zero, Option.some.injEq] at hy hw
      subst hy hw; exact hC'
    · simp at hy
  · intro r t _ _ h r' hr hna
    obtain ⟨Γ', p', a, b, c, d⟩ := gp_final h r' hr hna
    exact ⟨Γ', p', a, b, c, fun v hv => ⟨d v hv, trivial⟩⟩
  unfold Spec.Mpt.Dec.wdBody
  refine gp_dec ha.hH (L1 := LkL [nm "top", nm "db", nm "p", nm "n"] [BitVec.ofNat 64 0, DB, Q, N])
    (L2 := fun _ => False) (fun s _ hL v hv => ?_) ?_ (fun _ _ _ h => h.elim)
  · rw [ev_cw] at hv; cases hv; exact lkL_cons hL (by decide) _
  refine gp_dec ha.hH (L1 := LkL [nm "result", nm "top", nm "db", nm "p", nm "n"]
    [BitVec.ofNat 64 0, BitVec.ofNat 64 0, DB, Q, N])
    (L2 := fun _ => False) (fun s _ hL v hv => ?_) ?_ (fun _ _ _ h => h.elim)
  · rw [ev_cw] at hv; cases hv; exact lkL_cons hL (by decide) _
  refine gp_dec ha.hH (L1 := LkL [nm "cur_p", nm "result", nm "top", nm "db", nm "p", nm "n"]
    [Q, BitVec.ofNat 64 0, BitVec.ofNat 64 0, DB, Q, N])
    (L2 := fun _ => False) (fun s _ hL v hv => ?_) ?_ (fun _ _ _ h => h.elim)
  · rw [ev_lw (hL 3 _ _ rfl rfl)] at hv; cases hv; exact lkL_cons hL (by decide) _
  refine gp_dec ha.hH (L1 := LkL [nm "cur_n", nm "cur_p", nm "result", nm "top", nm "db", nm "p",
    nm "n"] [N, Q, BitVec.ofNat 64 0, BitVec.ofNat 64 0, DB, Q, N])
    (L2 := fun _ => False) (fun s _ hL v hv => ?_) ?_ (fun _ _ _ h => h.elim)
  · rw [ev_lw (hL 5 _ _ rfl rfl)] at hv; cases hv; exact lkL_cons hL (by decide) _
  refine gp_dec ha.hH (L1 := LkL [nm "mode", nm "cur_n", nm "cur_p", nm "result", nm "top", nm "db",
    nm "p", nm "n"] [BitVec.ofNat 64 1, N, Q, BitVec.ofNat 64 0, BitVec.ofNat 64 0, DB, Q, N])
    (L2 := fun _ => False) (fun s _ hL v hv => ?_) ?_ (fun _ _ _ h => h.elim)
  · rw [ev_cw] at hv; cases hv; exact lkL_cons hL (by decide) _
  refine gp_dec ha.hH (L1 := LkL [nm "slot", nm "mode", nm "cur_n", nm "cur_p", nm "result",
    nm "top", nm "db", nm "p", nm "n"] [BitVec.ofNat 64 0, BitVec.ofNat 64 1, N, Q, BitVec.ofNat 64 0,
    BitVec.ofNat 64 0, DB, Q, N])
    (L2 := fun _ => False) (fun s _ hL v hv => ?_) ?_ (fun _ _ _ h => h.elim)
  · rw [ev_cw] at hv; cases hv; exact lkL_cons hL (by decide) _
  refine gp_dec ha.hH (L1 := LkL nsB [BitVec.ofNat 64 1, BitVec.ofNat 64 0, BitVec.ofNat 64 1, N, Q,
    BitVec.ofNat 64 0, BitVec.ofNat 64 0, DB, Q, N])
    (L2 := fun _ => False) (fun s _ hL v hv => ?_) ?_ (fun _ _ _ h => h.elim)
  · rw [ev_cw] at hv; cases hv; exact lkL_cons hL (by decide) _
  exact wdTail_G ha hL0 hsp0

end InitECandidate.Solver.MemSafe.Dn

#print axioms InitECandidate.Solver.MemSafe.Dn.wdTail_G
#print axioms InitECandidate.Solver.MemSafe.Dn.sumSpecA_decode_witness_node_body_G
