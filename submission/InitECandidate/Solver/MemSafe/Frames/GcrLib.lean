import InitECandidate.Solver.MemSafe.Frames.GcrStep

/-!
# `generic_create`: precondition, post, callee facts and the driver steps (frames10, task 2)

* **`PreGCR M`** (the caller's obligation, from `op_create` / `op_create2`): the arguments
  `endowment, contract_address = ca, mstart, msize`, the chain with its extension, stack room in
  the running frame, `Φ + 2 ≤ M`, `JrNZ`, and `ca` a `BufOK 20` block (decision 4: the
  `alloc(24)` target block, allocated outside `Γ`).
* **`QGCR`**: returns and `EvmErr`s end with `ChainX` and `Φ ≤ Φ_entry + 2`.
* **`GcrCallees`**: the callee facts (fold entries, `set_retdata`, `start_child`).
* `kg_topstep` (a `TopCells` step), the gas-function steps `kg_csgCall` / `kg_creditCall`,
  `preSCT_kind2`.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 3200000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Types

variable {σ : Type} {X : Ctx 64}

/-- `generic_create`'s arguments. -/
def gcrArgs (en : ValueHOL 64) (ca ms mz : BitVec 64) : List (ValueHOL 64) :=
  [en, .val (.word ca), .val (.word ms), .val (.word mz)]

/-- **`generic_create`'s precondition.** -/
def PreGCR (M : Nat) (vs : List (ValueHOL 64)) (s : State σ) (Γ : Gam) : Prop :=
  ∃ en ca ms mz, vs = gcrArgs en ca ms mz ∧
    ∃ fs e0 c0 rest, ChainL guestC tEV tCK Γ s fs ∧ fs = (e0, c0) :: rest ∧ ChainE GP GR Γ s fs ∧
      (fld s.memory e0 evSp).toNat < (fld s.memory e0 evStackCap).toNat ∧ Phi s + 2 ≤ M ∧
      JrNZ s ∧ ∀ p, ptrsOf s = some p → BufOK guestC Γ p ca.toNat 20

/-- **`generic_create`'s post.** -/
def QGCR (_ : List (ValueHOL 64)) (s : State σ) (_ : Gam) (r : PanSemResultExact 64) (t : State σ)
    (Γ' : Gam) : Prop :=
  (∀ v, r = .returned v → ChainX guestC tEV tCK GP GR Γ' t ∧ Phi t ≤ Phi s + 2 ∧ RootK s t) ∧
  (∀ v, r = .exception nmEvmErr v → ChainX guestC tEV tCK GP GR Γ' t ∧ Phi t ≤ Phi s + 2 ∧
    RootK s t)

/-- The account functions' table signature (one `buf 20` address). -/
def sgB20 : Sig := ⟨[.buf 20], [], [], true⟩

/-- The account functions' table capabilities (the eight state table types). -/
def tblCaps : List Cap :=
  [⟨nm "*", 10, [], true⟩, ⟨nm "*", 14, [], true⟩, ⟨nm "*", 11, [], true⟩, ⟨nm "*", 12, [], true⟩,
    ⟨nm "*", 42, [], true⟩, ⟨nm "*", 43, [], true⟩, ⟨nm "*", 44, [], true⟩, ⟨nm "*", 45, [], true⟩, ⟨nm "*", 55, [], true⟩, ⟨nm "*", 65, [], true⟩, ⟨nm "*", 66, [], true⟩, ⟨nm "*", 67, [], true⟩, ⟨nm "*", 68, [], true⟩, ⟨nm "*", 69, [], true⟩, ⟨nm "*", 70, [], true⟩, ⟨nm "*", 71, [], true⟩]

/-- `stack_push`'s table capability (the running EV's `SP` / stack slots). -/
def spCaps : List Cap := [⟨nm "ev", tEV, [1, 2, 29], false⟩]

/-- **`generic_create`'s callee facts** (`gwS`: `start_child`'s protected globals). -/
structure GcrCallees (σ : Type) (X : Ctx 64) (H : Hooks σ) (M : Nat) (gwS : List MlS) : Prop where
  sd : SumSpecA σ X guestC H (nm "set_retdata") (sgA 2 [])
    (fun _ s Γ => ∃ e, EvRun tEV Γ s e ∧ RetOK guestC Γ s.memory e.base) (PWtopM tEV tCK [18, 19, 27])
    (fun vs s Γ r t Γ' => FQ vs s Γ r t Γ' ∧ ∀ e, gword s nmEv = some e → RetOK guestC Γ' t.memory e)
  sdF : KeepsFp σ X (nm "set_retdata")
  ga : CSumm σ X guestC H (nm "get_account") sgB20 tblCaps
  gaF : KeepsFp σ X (nm "get_account")
  ult : CSumm σ X guestC H (nm "u256_lt") (sgP 2) []
  ultF : KeepsFp σ X (nm "u256_lt")
  sp : CSumm σ X guestC H (nm "stack_push") (sgA 1 []) spCaps
  spF : KeepsFp σ X (nm "stack_push")
  wa : CSumm σ X guestC H (nm "warm_address") sgB20 tblCaps
  waF : KeepsFp σ X (nm "warm_address")
  al : CSumm σ X guestC H (nm "is_account_alive") sgB20 tblCaps
  alF : KeepsFp σ X (nm "is_account_alive")
  dep : CSumm σ X guestC H (nm "account_deployable") sgB20 tblCaps
  depF : KeepsFp σ X (nm "account_deployable")
  inc : SumSpecA σ X guestC H (nm "increment_nonce") ⟨[.buf 20], [], [Hooks.gJn], true⟩
    (fun _ s _ => JrNZ s) (PWtopM tEV tCK []) (fun _ _ _ _ _ _ => True)
  incF : KeepsFp σ X (nm "increment_nonce")
  sc : SumSpecT σ X guestC H (nm "start_child") (sgSC gwS)
    (PreSCX guestC guestSt tEV tCK M NewPreG XPG) (QSCX guestC tEV tCK GP GR)
  gwJn : Hooks.gJn ∈ gwS

/-! ## Capability footprints -/

section caps
variable {H : Hooks σ}

/-- The `prot` cells the table capabilities allow are in `PWtopM []`. -/
theorem tblCaps_pw {vs : List (ValueHOL 64)} {Γ : Gam} {s : State σ} (hG : G guestC H Γ s)
    {a : BitVec 64} (hw : CapPW tblCaps s Γ a) : PWtopM tEV tCK [] vs s Γ a := by
  have hcs : ∀ c ∈ tblCaps, c.ks = [] ∧ (c.all = true → guestSt c.t = true) := by decide
  obtain ⟨c, hc, ⟨e, -, k, hk, -⟩ | ⟨hall, e, he, hty, k, hks, rfl⟩⟩ := hw
  · rw [(hcs c hc).1] at hk; cases hk
  · refine stCell_pwM hG he hks ?_
    rcases hty with h | h
    · rw [h]; exact (hcs c hc).2 hall
    · exact guestSt_own _ h

theorem tblCaps_req {s : State σ} {Γ : Gam} : ReqOK tblCaps s Γ := by
  intro c hc hne
  exfalso; apply hne
  simp only [tblCaps, List.mem_cons, List.mem_nil_iff, or_false] at hc
  rcases hc with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl

/-- `stack_push`'s capability: the running EV's slots `1, 2, 29`. -/
theorem spCaps_pw {vs : List (ValueHOL 64)} {Γ : Gam} {s : State σ} (hG : G guestC H Γ s)
    {a : BitVec 64} (hw : CapPW spCaps s Γ a) : PWtopM tEV tCK [1, 2, 29] vs s Γ a := by
  obtain ⟨c, hc, ⟨e, ⟨he, het, heg⟩, k, hk, rfl⟩ | ⟨hall, -⟩⟩ := hw
  · simp only [spCaps, List.mem_singleton] at hc
    subst hc
    have heg' : gword s nmEv = some e.base := by
      rcases heg with h | h
      · exact absurd h (by decide)
      · exact h
    refine ⟨Or.inl ⟨e, ⟨he, het, heg'⟩, k, hk, rfl⟩, ?_⟩
    obtain ⟨p, -, hord, hL, -⟩ := hG
    have hsz : 280 ≤ e.size := by
      have := (lay_obj hL he).2.2.2.1; rw [het] at this; exact le_trans (by decide) this
    exact noMsg_of_frame (tCK := tCK) hL (by decide) he (Or.inl het)
      (inO_cell hord hL he (k := 8 * k) (by
        simp only [List.mem_cons, List.mem_nil_iff, or_false] at hk; omega))
  · simp only [spCaps, List.mem_singleton] at hc
    subst hc; cases hall

theorem spCaps_req {Γ : Gam} {s : State σ} {e : Obj} (he : EvRun tEV Γ s e) : ReqOK spCaps s Γ := by
  intro c hc _
  simp only [spCaps, List.mem_singleton] at hc
  subst hc
  exact ⟨e, he.1, he.2.1, he.2.2⟩

end caps

/-! ## Steps on the running frame's driver cells -/

section top
variable {H : Hooks σ}

/-- **A `TopCells` step from a `KG` state** (`Φ` lowered as stated). -/
theorem kg_topstep (hF : FrameCfg guestC H tEV tCK) {gw : List MlS} {Γ0 : Gam} {s0 : State σ}
    {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64} {rest : List Frame}
    (hfs : fs = (e, c) :: rest) {Bs : List (BitVec 64)} {d d' : Nat} {u t : State σ}
    (hu : KG H gw Γ0 s0 p0 fs e Bs d u) (hmod : ModifiesOnly (TopCells e c) u.memory t.memory)
    (hglob : t.globals = u.globals) (hd : t.memaddrs = u.memaddrs) (hbe : t.be = u.be)
    (hΦ : ∀ Γ1, G guestC H Γ1 u → ChainL guestC tEV tCK Γ1 u fs → ChainL guestC tEV tCK Γ1 t fs →
      wsum t.memory rest = wsum u.memory rest → Phi t + d' ≤ Phi u + d) :
    KG H gw Γ0 s0 p0 fs e Bs d' t := by
  obtain ⟨hJ, Γ1, p1, hrun, hch, hE, hΦu, hB, h16, h232⟩ := hu
  obtain ⟨hrun2, hch2, hE2, hrest, k16, k232⟩ := kg_top hF hfs hrun hch hE hmod hglob hd hbe
  have := hΦ Γ1 hrun.2.2.2.2.2.1 hch hch2 hrest
  exact ⟨jrNZ_congr hglob hJ, Γ1, p1, hrun2, hch2, hE2, by omega, hB, k16.trans h16,
    k232.trans h232⟩

/-- The running frame's weight under a store into its EV slot `k` (not gas, spilled, running). -/
theorem phi_store_other (hF : FrameCfg guestC H tEV tCK) {Γ : Gam} {u t : State σ}
    {fs : List Frame} {e c : BitVec 64} {rest : List Frame} (hfs : fs = (e, c) :: rest)
    (hG : G guestC H Γ u) (hch : ChainL guestC tEV tCK Γ u fs) (hch' : ChainL guestC tEV tCK Γ t fs)
    {k : Nat} (hk : k < 280) (hk64 : k ≠ 64) (hk192 : k ≠ 192) (hk104 : k ≠ 104) {x : BitVec 64}
    (hm : t.memory = upd u.memory (e + BitVec.ofNat 64 k) x)
    (hrest : wsum t.memory rest = wsum u.memory rest) : Phi t = Phi u := by
  obtain ⟨p, -, hord, hL, -⟩ := hG
  have htop : (e, c) ∈ fs := by rw [hfs]; exact List.mem_cons_self ..
  obtain ⟨oe, hoe, hoeb, hoet⟩ := ev_obj hch htop
  obtain ⟨oc, hoc, hocb, hoct⟩ := ck_obj hch htop
  dsimp only at hoeb hocb
  subst hoeb hocb
  have hse := ev_size hF hL hoe hoet
  have hsc := ck_size hF hL hoc hoct
  have hne : oe.base ≠ oc.base := base_ne_of_ty hL hoe hoc (by rw [hoet, hoct]; exact hF.ne)
  have kE : ∀ j, j < 280 → j ≠ k → fld t.memory oe.base j = fld u.memory oe.base j :=
    fun j hj hjk => by
      rw [hm]; exact fld_upd_ne' (cell_ne hord hL hoe hoe (by omega) (by omega) (Or.inr hjk))
  have kC : fld t.memory oc.base 32 = fld u.memory oc.base 32 := by
    rw [hm]; exact fld_upd_ne' (cell_ne hord hL hoc hoe (by omega) (by omega) (Or.inl hne.symm))
  rw [phi_eq hch'.chain, phi_eq hch.chain, hfs, wsum_cons, wsum_cons, hrest, wt_eq, wt_eq,
    kE 64 (by omega) (Ne.symm hk64), kE 192 (by omega) (Ne.symm hk192),
    kE 104 (by omega) (Ne.symm hk104), kC]

/-- The running frame's weight under a store into its `GAS_LEFT` that does not raise it. -/
theorem phi_store64 (hF : FrameCfg guestC H tEV tCK) {Γ : Gam} {u t : State σ}
    {fs : List Frame} {e c : BitVec 64} {rest : List Frame} (hfs : fs = (e, c) :: rest)
    (hG : G guestC H Γ u) (hch : ChainL guestC tEV tCK Γ u fs) (hch' : ChainL guestC tEV tCK Γ t fs)
    {x : BitVec 64} (hm : t.memory = upd u.memory (e + BitVec.ofNat 64 64) x)
    (hrest : wsum t.memory rest = wsum u.memory rest) :
    Phi t + (fld u.memory e 64).toNat = Phi u + x.toNat := by
  obtain ⟨p, -, hord, hL, -⟩ := hG
  have htop : (e, c) ∈ fs := by rw [hfs]; exact List.mem_cons_self ..
  obtain ⟨oe, hoe, hoeb, hoet⟩ := ev_obj hch htop
  obtain ⟨oc, hoc, hocb, hoct⟩ := ck_obj hch htop
  dsimp only at hoeb hocb
  subst hoeb hocb
  have hse := ev_size hF hL hoe hoet
  have hsc := ck_size hF hL hoc hoct
  have hne : oe.base ≠ oc.base := base_ne_of_ty hL hoe hoc (by rw [hoet, hoct]; exact hF.ne)
  have kE : ∀ j, j < 280 → j ≠ 64 → fld t.memory oe.base j = fld u.memory oe.base j :=
    fun j hj hjk => by
      rw [hm]; exact fld_upd_ne' (cell_ne hord hL hoe hoe (by omega) (by omega) (Or.inr hjk))
  have kC : fld t.memory oc.base 32 = fld u.memory oc.base 32 := by
    rw [hm]; exact fld_upd_ne' (cell_ne hord hL hoc hoe (by omega) (by omega) (Or.inl hne.symm))
  have k64 : fld t.memory oe.base 64 = x := by rw [hm]; exact fld_upd_eq x
  rw [phi_eq hch'.chain, phi_eq hch.chain, hfs, wsum_cons, wsum_cons, hrest, wt_eq, wt_eq,
    kE 192 (by omega) (by omega), kE 104 (by omega) (by omega), kC, k64]
  omega

end top

/-! ## `start_child`'s kind-2 precondition -/

theorem preSCT_kind2 {C : Cfg} {St : Nat → Bool} {tEV tCK M : Nat}
    {NewPre : List (ValueHOL 64) → State σ → Gam → Prop} {s : State σ} {Γ : Gam}
    {cm cmark cmm nac os osz x ca : BitVec 64}
    (h : PreSCT C St tEV tCK M NewPre (scArgs cm 1 cmark cmm nac os osz x) s Γ)
    (hb : ∀ p, ptrsOf s = some p → BufOK C Γ p (fld s.memory cm 32).toNat 20) :
    PreSCT C St tEV tCK M NewPre (scArgs cm 2 cmark cmm nac os osz ca) s Γ := by
  obtain ⟨cm', kind', cmark', cmm', nac', os', osz', ca', hvs, -, fs, e0, c0, rest, h1, h2, h3, h4,
    h5, h6, h7, h8, h9, h10, h11, h12, -⟩ := h
  simp only [scArgs, List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hvs
  obtain ⟨rfl, -, rfl, rfl, rfl, rfl, rfl, -⟩ := hvs
  exact ⟨cm, 2, cmark, cmm, nac, os, osz, ca, rfl, Or.inr rfl, fs, e0, c0, rest, h1, h2, h3, h4,
    h5, h6, h7, h8, h9, h10, h11, h12, fun _ => hb⟩

end InitECandidate.Solver.MemSafe.Frames

#print axioms InitECandidate.Solver.MemSafe.Frames.kg_topstep
#print axioms InitECandidate.Solver.MemSafe.Frames.phi_store_other
#print axioms InitECandidate.Solver.MemSafe.Frames.phi_store64
#print axioms InitECandidate.Solver.MemSafe.Frames.preSCT_kind2
#print axioms InitECandidate.Solver.MemSafe.Frames.spCaps_pw
