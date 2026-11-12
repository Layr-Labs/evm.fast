import InitECandidate.Solver.MemSafe.Hooks.RecTx
import InitECandidate.Solver.MemSafe.Hooks.RecPl
import InitECandidate.Solver.MemSafe.Hooks.RecSi
import InitECandidate.Solver.MemSafe.Hooks.RecWs
import InitECandidate.Solver.MemSafe.Hooks.RecFr
import InitECandidate.Solver.MemSafe.Hooks.RecCsl
import InitECandidate.Solver.MemSafe.Hooks.RecNib
import InitECandidate.Solver.MemSafe.Hooks.RecVal
import InitECandidate.Solver.MemSafe.Hooks.RecTe

/-!
# The record hook family `guestHooksR`

**`guestHooksR = extR recTab guestHooksJL`**: the journal-and-list family plus the record table
`recTab` (the transaction, payload, stateless-input and witness-state entries `txD`, `plD`,
`siD`, `wsD`; a header or BAL account entry is one more element of `recTab`, with no other
change). Release relation `refGR = refR recTab refGJL`.

Instances (all one-liners from the generic laws of `RecDefs` / `RecFr`):
`guestHooksR_lawful`, `_mono`, `_shrinkR`, `_ev`, `_hookEV`, `_hookCK`,
**`guestHooksR_guest : GuestHooks guestHooksR`**, `_ckWf`, `_glob`, `frameCfg_guestHooksR`,
`drvCfg_guestHooksR`, **`htabHooks_guestR`**, **`lstHooks_guestR`**, **`relCfg_guestR`**,
**`rdHooks_guestR`**, **`newHooksL_guestR`**, **`jHooks_guestR`**, and
**`recHooks_guestR : RecHooks recTab guestHooksR`** (the record entries' requirements);
`txW_of_wf` / `wf_of_txW` / `wf_sub` (the tx record's hook from / to `TxW`; sub-arrays unhooked).
-/

namespace InitECandidate.Solver.MemSafe.Hooks
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Struct InitECandidate.Solver.MemSafe.Frames
open InitECandidate.Solver.MemSafe.HtabEntries
open InitECandidate.Solver.Spec

variable {σ : Type}

/-- **The record table** (type-indexed: entries for one type are conjoined). -/
theorem recTy_tNLEAF : RecTyOK tNLEAF := by decide
theorem recTy_tNEXT : RecTyOK tNEXT := by decide
theorem recTy_tNBRANCH : RecTyOK tNBRANCH := by decide

def nibLeafD : RecD := nibD tNLEAF 4 64 recTy_tNLEAF (by decide) (by decide) (by decide)
def nibExtD : RecD := nibD tNEXT 4 56 recTy_tNEXT (by decide) (by decide) (by decide)
def valLeafD : RecD := valD tNLEAF 6 64 tVAL recTy_tNLEAF (by decide) (by decide) (by decide) (by decide)
def valBrD : RecD := valD tNBRANCH 20 176 tVAL recTy_tNBRANCH (by decide) (by decide) (by decide) (by decide)

def recTab (be : Bool) : List RecD :=
  [txD, plD, siD, wsD, cslD, teD, nibLeafD, nibExtD, valLeafD, valBrD,
    nibObjD 0 (by decide) be, nibObjD 1 (by decide) be, nibObjD 2 (by decide) be,
    nibObjD 3 (by decide) be, nibObjD 4 (by decide) be, nibObjD 5 (by decide) be,
    nibObjD 6 (by decide) be, nibObjD 7 (by decide) be]

/-- The types with record entries. -/
def recTys : List Nat :=
  [tTX, tPL, tSI, tWSR, tCSL, tTE, tNLEAF, tNEXT, tNBRANCH, 56, 57, 58, 59, 60, 61, 62, 63]

/-- Every entry's type is listed: the way to show a type has no entries, whatever the table's size. -/
theorem recTab_ty {be : Bool} {e : RecD} (he : e ∈ recTab be) : e.ty ∈ recTys := by
  simp only [recTab, List.mem_cons, List.not_mem_nil, or_false] at he
  rcases he with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl |
    rfl | rfl | rfl | rfl <;> cases be <;> decide


/-- **The guest hook family with the journal, list and record hooks.** -/
def guestHooksR : Hooks σ := extR recTab guestHooksJL

/-- Its release relation. -/
def refGR : Gam → State σ → Obj → BitVec 64 → Prop := refR recTab refGJL

theorem guestHooksR_lawful : HooksLawful guestC (guestHooksR (σ := σ)) :=
  lawful_extR guestHooksJL_lawful

theorem guestHooksR_mono : HooksMono guestC (guestHooksR (σ := σ)) := mono_extR guestHooksJL_mono

theorem guestHooksR_shrinkR : HooksShrinkR guestC (guestHooksR (σ := σ)) refGR :=
  shrinkR_extR guestHooksJL_shrinkR

theorem guestHooksR_ev : EvHook guestC (guestHooksR (σ := σ)) Shards.sty := ev_extR guestHooksJL_ev

theorem guestHooksR_hookEV : ∀ (Γ : Gam) (s : State σ) (o o' : Obj), o' ∈ Γ → o'.ty = tEV →
    ∀ j ∈ evDriverSlots16, ¬ (guestHooksR (σ := σ)).fp Γ s o (o'.cell j) :=
  hookEV_extR guestHooksJL_hookEV

theorem guestHooksR_hookCK : ∀ (Γ : Gam) (s : State σ) (o o' : Obj), o' ∈ Γ → o'.ty = tCK →
    ∀ j, j < 13 → ¬ (guestHooksR (σ := σ)).fp Γ s o (o'.cell j) :=
  hookCK_extR guestHooksJL_hookCK

/-- **The record family meets the fold's hook hypothesis.** -/
theorem guestHooksR_guest : Shards.GuestHooks (guestHooksR (σ := σ)) := guest_extR guestHooksJL_guest

theorem guestHooksR_ckWf : ∀ (Γ : Gam) (s : State σ) (o : Obj), o.ty = tCK →
    (guestHooksR (σ := σ)).wf Γ s o := ckWf_extR guestHooksJL_ckWf

theorem guestHooksR_glob : ∀ (Γ : Gam) (s t : State σ) (o : Obj), (guestHooksR (σ := σ)).wf Γ s o →
    t.memory = s.memory → t.memaddrs = s.memaddrs → t.be = s.be →
    (∀ g ∈ guestC.PG, g ≠ nm "ev" → g ≠ nm "cur_cont" → t.globals.lookup g = s.globals.lookup g) →
    (guestHooksR (σ := σ)).wf Γ t o := glob_extR guestHooksJL_glob

theorem frameCfg_guestHooksR : FrameCfg guestC (guestHooksR (σ := σ)) tEV tCK :=
  frameCfg_extR guestHooksJL_lawful guestHooksJL_hookEV guestHooksJL_hookCK

theorem drvCfg_guestHooksR : DrvCfg guestC (guestHooksR (σ := σ)) tEV tCK :=
  drvCfg_extR frameCfg_guestHooksR guestHooksJL_mono guestHooksJL_ckWf
    (fun Γ s t o hw hm hd hbe hpg => guestHooksJL_glob Γ s t o hw hm hd hbe hpg)

theorem htabHooks_guestR : HtabHooks (guestHooksR (σ := σ)) := htab_extR htabHooks_guestJL

theorem lstHooks_guestR : LstHooks (guestHooksR (σ := σ)) := lst_extR lstHooks_guestJL

theorem relCfg_guestR : RelCfg guestC (guestHooksR (σ := σ)) tEV refGR := relCfg_extR relCfg_guestJL

theorem rdHooks_guestR : RdHooks (guestHooksR (σ := σ)) := rdHooks_extR rdHooks_guestJL

theorem newHooksL_guestR : NewHooksL (guestHooksR (σ := σ)) := newHooksL_extR newHooksL_guestJL

theorem jHooks_guestR : JHooks (guestHooksR (σ := σ)) := jHooks_extR jHooks_guestJL

/-- **The record entries' hook requirements** hold for the record family. -/
theorem recHooks_guestR : RecHooks recTab (guestHooksR (σ := σ)) :=
  recHooks_extR recBase_triv recBase_fp

/-! ## The transaction record -/

theorem recTab_leaf {be : Bool} {e : RecD} (he : e ∈ recTab be) (ht : e.ty = tNLEAF) :
    e = nibLeafD ∨ e = valLeafD := by
  simp only [recTab, List.mem_cons, List.not_mem_nil, or_false] at he
  rcases he with h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h <;>
    first | exact Or.inl h | exact Or.inr h | (subst h; exact absurd ht (by cases be <;> decide))

theorem recTab_ext {be : Bool} {e : RecD} (he : e ∈ recTab be) (ht : e.ty = tNEXT) : e = nibExtD := by
  simp only [recTab, List.mem_cons, List.not_mem_nil, or_false] at he
  rcases he with h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h <;>
    first | exact h | (subst h; exact absurd ht (by cases be <;> decide))

theorem recTab_br {be : Bool} {e : RecD} (he : e ∈ recTab be) (ht : e.ty = tNBRANCH) : e = valBrD := by
  simp only [recTab, List.mem_cons, List.not_mem_nil, or_false] at he
  rcases he with h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h <;>
    first | exact h | (subst h; exact absurd ht (by cases be <;> decide))

theorem txD_mem {be : Bool} : txD ∈ recTab be := List.mem_cons_self

theorem plD_mem {be : Bool} : plD ∈ recTab be := by simp [recTab]

theorem siD_mem {be : Bool} : siD ∈ recTab be := by simp [recTab]

theorem recTab_tx {be : Bool} {e : RecD} (he : e ∈ recTab be) (ht : e.ty = tTX) : e = txD := by
  simp only [recTab, List.mem_cons, List.not_mem_nil, or_false] at he
  rcases he with h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h <;>
    first | exact h | (subst h; exact absurd ht (by cases be <;> decide))

theorem recTab_pl {be : Bool} {e : RecD} (he : e ∈ recTab be) (ht : e.ty = tPL) : e = plD := by
  simp only [recTab, List.mem_cons, List.not_mem_nil, or_false] at he
  rcases he with h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h <;>
    first | exact h | (subst h; exact absurd ht (by cases be <;> decide))

theorem recTab_si {be : Bool} {e : RecD} (he : e ∈ recTab be) (ht : e.ty = tSI) : e = siD := by
  simp only [recTab, List.mem_cons, List.not_mem_nil, or_false] at he
  rcases he with h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h <;>
    first | exact h | (subst h; exact absurd ht (by cases be <;> decide))

theorem wsD_mem {be : Bool} : wsD ∈ recTab be := by simp [recTab]

theorem recTab_ws {be : Bool} {e : RecD} (he : e ∈ recTab be) (ht : e.ty = tWSR) : e = wsD := by
  simp only [recTab, List.mem_cons, List.not_mem_nil, or_false] at he
  rcases he with h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h <;>
    first | exact h | (subst h; exact absurd ht (by cases be <;> decide))

theorem cslD_mem {be : Bool} : cslD ∈ recTab be := by simp [recTab]

theorem recTab_csl {be : Bool} {e : RecD} (he : e ∈ recTab be) (ht : e.ty = tCSL) : e = cslD := by
  simp only [recTab, List.mem_cons, List.not_mem_nil, or_false] at he
  rcases he with h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h <;>
    first | exact h | (subst h; exact absurd ht (by cases be <;> decide))

/-- The witness-state record's hook gives `WsRW` (witg). -/
theorem wsRW_of_wf {Γ : Gam} {s : State σ} {o : Obj} (ht : o.ty = tWSR)
    (hw : (guestHooksR (σ := σ)).wf Γ s o) : o ∈ Γ ∧ GamOK Γ ∧ WsRW Γ s.memory o :=
  hw.2 wsD wsD_mem ht.symm

/-- `WsRW` makes the witness-state record's hook (witg). -/
theorem wf_of_wsRW {Γ : Gam} {s : State σ} {o : Obj} (ht : o.ty = tWSR) (ho : o ∈ Γ) (hG : GamOK Γ)
    (hw : WsRW Γ s.memory o) : (guestHooksR (σ := σ)).wf Γ s o :=
  recHooks_guestR.make Γ s o (ht ▸ recTy_tWSR) fun e he het => by
    rw [recTab_ws he (het.trans ht)]
    exact ⟨ho, hG, hw⟩

/-- The stateless-input record's hook gives `SiW`. -/
theorem siW_of_wf {Γ : Gam} {s : State σ} {o : Obj} (ht : o.ty = tSI)
    (hw : (guestHooksR (σ := σ)).wf Γ s o) : o ∈ Γ ∧ GamOK Γ ∧ SiW Γ s.memory o :=
  hw.2 siD siD_mem ht.symm

/-- `SiW` makes the stateless-input record's hook. -/
theorem wf_of_siW {Γ : Gam} {s : State σ} {o : Obj} (ht : o.ty = tSI) (ho : o ∈ Γ) (hG : GamOK Γ)
    (hw : SiW Γ s.memory o) : (guestHooksR (σ := σ)).wf Γ s o :=
  recHooks_guestR.make Γ s o (ht ▸ recTy_tSI) fun e he het => by
    rw [recTab_si he (het.trans ht)]
    exact ⟨ho, hG, hw⟩

/-- The payload record's hook gives `PlW`. -/
theorem plW_of_wf {Γ : Gam} {s : State σ} {o : Obj} (ht : o.ty = tPL)
    (hw : (guestHooksR (σ := σ)).wf Γ s o) : o ∈ Γ ∧ GamOK Γ ∧ PlW Γ s.memory o :=
  hw.2 plD plD_mem ht.symm

/-- `PlW` makes the payload record's hook. -/
theorem wf_of_plW {Γ : Gam} {s : State σ} {o : Obj} (ht : o.ty = tPL) (ho : o ∈ Γ) (hG : GamOK Γ)
    (hw : PlW Γ s.memory o) : (guestHooksR (σ := σ)).wf Γ s o :=
  recHooks_guestR.make Γ s o (ht ▸ recTy_tPL) fun e he het => by
    rw [recTab_pl he (het.trans ht)]
    exact ⟨ho, hG, hw⟩

/-- The tx record's hook gives `TxW`. -/
theorem txW_of_wf {Γ : Gam} {s : State σ} {o : Obj} (ht : o.ty = tTX)
    (hw : (guestHooksR (σ := σ)).wf Γ s o) : o ∈ Γ ∧ GamOK Γ ∧ TxW Γ s.memory o :=
  hw.2 txD txD_mem ht.symm

/-- `TxW` makes the tx record's hook. -/
theorem wf_of_txW {Γ : Gam} {s : State σ} {o : Obj} (ht : o.ty = tTX) (ho : o ∈ Γ) (hG : GamOK Γ)
    (hw : TxW Γ s.memory o) : (guestHooksR (σ := σ)).wf Γ s o :=
  recHooks_guestR.make Γ s o (ht ▸ recTy_tTX) fun e he het => by
    rw [recTab_tx he (het.trans ht)]
    exact ⟨ho, hG, hw⟩

/-- The sub-array types are unhooked. -/
theorem wf_sub {Γ : Gam} {s : State σ} {o : Obj} (ht : o.ty = tACC ∨ o.ty = tAUTH) :
    (guestHooksR (σ := σ)).wf Γ s o := by
  refine recHooks_guestR.make Γ s o (by rcases ht with h | h <;> rw [h] <;> decide) fun e he het => ?_
  have hm := recTab_ty he
  rw [het] at hm
  rcases ht with h | h <;> rw [h] at hm <;> exact absurd hm (by decide)

end InitECandidate.Solver.MemSafe.Hooks

#print axioms InitECandidate.Solver.MemSafe.Hooks.guestHooksR_guest
#print axioms InitECandidate.Solver.MemSafe.Hooks.relCfg_guestR
#print axioms InitECandidate.Solver.MemSafe.Hooks.jHooks_guestR
#print axioms InitECandidate.Solver.MemSafe.Hooks.recHooks_guestR
#print axioms InitECandidate.Solver.MemSafe.Hooks.drvCfg_guestHooksR
