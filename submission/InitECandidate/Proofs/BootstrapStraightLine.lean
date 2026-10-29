import InitECandidate.Proofs.BootstrapTailControlFacts
import InitECandidate.Proofs.BootstrapCopyFacts
import InitECandidate.Proofs.BootstrapLastWord
import InitECandidate.Proofs.BootstrapTailMemory

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

set_option autoImplicit false

namespace InitECandidate.Proofs.BootstrapStraightLine
open InitE
open Flapjack Flapjack.Compiler.Encoders.Asm Flapjack.Compiler.Encoders.AsmSem
open Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BootstrapSteps InitECandidate.Proofs.BootstrapCopy
open Flapjack.RiscV.TargetProof

noncomputable def tailState0 (s : AsmState 64) := s
noncomputable def tailState1 (s : AsmState 64) := after (tailState0 s) (bootLoc 5 0x8000002c initDataRam)

theorem tailState1_control (s : AsmState 64) (pc : s.pc = 0x8000002c) :
    (tailState1 s).pc = 2147483700#64 ∧
    (tailState1 s).regs = (fun r => if r = 5 then 2684485632#64 else s.regs r) ∧
    (tailState1 s).memDomain = s.memDomain ∧
    (tailState1 s).lr = s.lr ∧ (tailState1 s).align = s.align ∧
    (tailState1 s).be = s.be := by
  have prev : (tailState0 s).pc = 0x8000002c ∧ (tailState0 s).regs = s.regs ∧
      (tailState0 s).memDomain = s.memDomain ∧ (tailState0 s).lr = s.lr ∧
      (tailState0 s).align = s.align ∧ (tailState0 s).be = s.be := ⟨pc, rfl, rfl, rfl, rfl, rfl⟩
  have obs := control_loc (tailState0 s) 5 537001940#64
  refine ⟨obs.1.trans ?_, ?_, obs.2.2.1.trans prev.2.2.1,
    obs.2.2.2.1.trans prev.2.2.2.1, obs.2.2.2.2.1.trans prev.2.2.2.2.1,
    obs.2.2.2.2.2.trans prev.2.2.2.2.2⟩
  · exact (congrArg (fun p : BitVec 64 => p + 8#64) prev.1).trans (by decide)
  ·
    have value := (congrArg (fun p : BitVec 64 => p + 537001940#64) prev.1).trans
      (show 2147483692#64 + 537001940#64 = 2684485632#64 by decide)
    have transformed := congrArg₂
      (fun (v : BitVec 64) (registers : Nat → BitVec 64) =>
        fun x => if x = 5 then v else registers x) value prev.2.1
    refine obs.2.1.trans (transformed.trans ?_)
    funext x
    norm_num [wordShift]
    all_goals first
      | (intro hx; subst x; norm_num)
      | (split_ifs <;> first | rfl | omega)

noncomputable def tailState2 (s : AsmState 64) := after (tailState1 s) (bootConst 6 161)

theorem tailState2_control (s : AsmState 64) (pc : s.pc = 0x8000002c) :
    (tailState2 s).pc = 2147483704#64 ∧
    (tailState2 s).regs = (fun r => if r = 5 then 2684485632#64 else if r = 6 then 161#64 else s.regs r) ∧
    (tailState2 s).memDomain = s.memDomain ∧
    (tailState2 s).lr = s.lr ∧ (tailState2 s).align = s.align ∧
    (tailState2 s).be = s.be := by
  have prev := tailState1_control s pc
  have obs := control_const (tailState1 s) 6 161#64 4 (by decide)
  refine ⟨obs.1.trans ?_, ?_, obs.2.2.1.trans prev.2.2.1,
    obs.2.2.2.1.trans prev.2.2.2.1, obs.2.2.2.2.1.trans prev.2.2.2.2.1,
    obs.2.2.2.2.2.trans prev.2.2.2.2.2⟩
  · exact (congrArg (fun p : BitVec 64 => p + 4#64) prev.1).trans (by decide)
  ·
    have transformed := congrArg
      (fun registers : Nat → BitVec 64 =>
        fun x => if x = 6 then 161#64 else registers x) prev.2.1
    refine obs.2.1.trans (transformed.trans ?_)
    funext x
    norm_num [wordShift]
    all_goals first
      | (intro hx; subst x; norm_num)
      | (split_ifs <;> first | rfl | omega)

noncomputable def tailState3 (s : AsmState 64) := after (tailState2 s) (bootShift 6 24)

theorem tailState3_control (s : AsmState 64) (pc : s.pc = 0x8000002c) :
    (tailState3 s).pc = 2147483708#64 ∧
    (tailState3 s).regs = (fun r => if r = 5 then 2684485632#64 else if r = 6 then 2701131776#64 else s.regs r) ∧
    (tailState3 s).memDomain = s.memDomain ∧
    (tailState3 s).lr = s.lr ∧ (tailState3 s).align = s.align ∧
    (tailState3 s).be = s.be := by
  have prev := tailState2_control s pc
  have obs := control_shift (tailState2 s) 6 24#64 4 (by decide)
  refine ⟨obs.1.trans ?_, ?_, obs.2.2.1.trans prev.2.2.1,
    obs.2.2.2.1.trans prev.2.2.2.1, obs.2.2.2.2.1.trans prev.2.2.2.2.1,
    obs.2.2.2.2.2.trans prev.2.2.2.2.2⟩
  · exact (congrArg (fun p : BitVec 64 => p + 4#64) prev.1).trans (by decide)
  ·
    have transformed := congrArg
      (fun registers : Nat → BitVec 64 =>
        fun x => if x = 6 then wordShift .lsl (registers 6) 24 else registers x) prev.2.1
    refine obs.2.1.trans (transformed.trans ?_)
    funext x
    norm_num [wordShift]
    all_goals first
      | (intro hx; subst x; norm_num)
      | (split_ifs <;> first | rfl | omega)

noncomputable def tailState4 (s : AsmState 64) := after (tailState3 s) (bootStore 6 5 0)

theorem tailState4_control (s : AsmState 64) (pc : s.pc = 0x8000002c) :
    (tailState4 s).pc = 2147483712#64 ∧
    (tailState4 s).regs = (fun r => if r = 5 then 2684485632#64 else if r = 6 then 2701131776#64 else s.regs r) ∧
    (tailState4 s).memDomain = s.memDomain ∧
    (tailState4 s).lr = s.lr ∧ (tailState4 s).align = s.align ∧
    (tailState4 s).be = s.be := by
  have prev := tailState3_control s pc
  have obs := control_store (tailState3 s) 6 5 0 4 (by decide)
  refine ⟨obs.1.trans ?_, obs.2.1.trans prev.2.1, obs.2.2.1.trans prev.2.2.1,
    obs.2.2.2.1.trans prev.2.2.2.1, obs.2.2.2.2.1.trans prev.2.2.2.2.1,
    obs.2.2.2.2.2.trans prev.2.2.2.2.2⟩
  exact (congrArg (fun p : BitVec 64 => p + 4) prev.1).trans (by decide)

noncomputable def tailState5 (s : AsmState 64) := after (tailState4 s) (bootLoc 5 0x80000040 (initDataRam+8))

theorem tailState5_control (s : AsmState 64) (pc : s.pc = 0x8000002c) :
    (tailState5 s).pc = 2147483720#64 ∧
    (tailState5 s).regs = (fun r => if r = 5 then 2684485640#64 else if r = 6 then 2701131776#64 else s.regs r) ∧
    (tailState5 s).memDomain = s.memDomain ∧
    (tailState5 s).lr = s.lr ∧ (tailState5 s).align = s.align ∧
    (tailState5 s).be = s.be := by
  have prev := tailState4_control s pc
  have obs := control_loc (tailState4 s) 5 537001928#64
  refine ⟨obs.1.trans ?_, ?_, obs.2.2.1.trans prev.2.2.1,
    obs.2.2.2.1.trans prev.2.2.2.1, obs.2.2.2.2.1.trans prev.2.2.2.2.1,
    obs.2.2.2.2.2.trans prev.2.2.2.2.2⟩
  · exact (congrArg (fun p : BitVec 64 => p + 8#64) prev.1).trans (by decide)
  ·
    have value := (congrArg (fun p : BitVec 64 => p + 537001928#64) prev.1).trans
      (show 2147483712#64 + 537001928#64 = 2684485640#64 by decide)
    have transformed := congrArg₂
      (fun (v : BitVec 64) (registers : Nat → BitVec 64) =>
        fun x => if x = 5 then v else registers x) value prev.2.1
    refine obs.2.1.trans (transformed.trans ?_)
    funext x
    norm_num [wordShift]
    all_goals first
      | (intro hx; subst x; norm_num)
      | (split_ifs <;> first | rfl | omega)

noncomputable def tailState6 (s : AsmState 64) := after (tailState5 s) (bootConst 6 2015)

theorem tailState6_control (s : AsmState 64) (pc : s.pc = 0x8000002c) :
    (tailState6 s).pc = 2147483724#64 ∧
    (tailState6 s).regs = (fun r => if r = 5 then 2684485640#64 else if r = 6 then 2015#64 else s.regs r) ∧
    (tailState6 s).memDomain = s.memDomain ∧
    (tailState6 s).lr = s.lr ∧ (tailState6 s).align = s.align ∧
    (tailState6 s).be = s.be := by
  have prev := tailState5_control s pc
  have obs := control_const (tailState5 s) 6 2015#64 4 (by decide)
  refine ⟨obs.1.trans ?_, ?_, obs.2.2.1.trans prev.2.2.1,
    obs.2.2.2.1.trans prev.2.2.2.1, obs.2.2.2.2.1.trans prev.2.2.2.2.1,
    obs.2.2.2.2.2.trans prev.2.2.2.2.2⟩
  · exact (congrArg (fun p : BitVec 64 => p + 4#64) prev.1).trans (by decide)
  ·
    have transformed := congrArg
      (fun registers : Nat → BitVec 64 =>
        fun x => if x = 6 then 2015#64 else registers x) prev.2.1
    refine obs.2.1.trans (transformed.trans ?_)
    funext x
    norm_num [wordShift]
    all_goals first
      | (intro hx; subst x; norm_num)
      | (split_ifs <;> first | rfl | omega)

noncomputable def tailState7 (s : AsmState 64) := after (tailState6 s) (bootShift 6 24)

theorem tailState7_control (s : AsmState 64) (pc : s.pc = 0x8000002c) :
    (tailState7 s).pc = 2147483728#64 ∧
    (tailState7 s).regs = (fun r => if r = 5 then 2684485640#64 else if r = 6 then 33806090240#64 else s.regs r) ∧
    (tailState7 s).memDomain = s.memDomain ∧
    (tailState7 s).lr = s.lr ∧ (tailState7 s).align = s.align ∧
    (tailState7 s).be = s.be := by
  have prev := tailState6_control s pc
  have obs := control_shift (tailState6 s) 6 24#64 4 (by decide)
  refine ⟨obs.1.trans ?_, ?_, obs.2.2.1.trans prev.2.2.1,
    obs.2.2.2.1.trans prev.2.2.2.1, obs.2.2.2.2.1.trans prev.2.2.2.2.1,
    obs.2.2.2.2.2.trans prev.2.2.2.2.2⟩
  · exact (congrArg (fun p : BitVec 64 => p + 4#64) prev.1).trans (by decide)
  ·
    have transformed := congrArg
      (fun registers : Nat → BitVec 64 =>
        fun x => if x = 6 then wordShift .lsl (registers 6) 24 else registers x) prev.2.1
    refine obs.2.1.trans (transformed.trans ?_)
    funext x
    norm_num [wordShift]
    all_goals first
      | (intro hx; subst x; norm_num)
      | (split_ifs <;> first | rfl | omega)

noncomputable def tailState8 (s : AsmState 64) := after (tailState7 s) (bootStore 6 5 0)

theorem tailState8_control (s : AsmState 64) (pc : s.pc = 0x8000002c) :
    (tailState8 s).pc = 2147483732#64 ∧
    (tailState8 s).regs = (fun r => if r = 5 then 2684485640#64 else if r = 6 then 33806090240#64 else s.regs r) ∧
    (tailState8 s).memDomain = s.memDomain ∧
    (tailState8 s).lr = s.lr ∧ (tailState8 s).align = s.align ∧
    (tailState8 s).be = s.be := by
  have prev := tailState7_control s pc
  have obs := control_store (tailState7 s) 6 5 0 4 (by decide)
  refine ⟨obs.1.trans ?_, obs.2.1.trans prev.2.1, obs.2.2.1.trans prev.2.2.1,
    obs.2.2.2.1.trans prev.2.2.2.1, obs.2.2.2.2.1.trans prev.2.2.2.2.1,
    obs.2.2.2.2.2.trans prev.2.2.2.2.2⟩
  exact (congrArg (fun p : BitVec 64 => p + 4) prev.1).trans (by decide)

noncomputable def tailState9 (s : AsmState 64) := after (tailState8 s) (bootLoc 5 0x80000054 (initDataRam+16))

theorem tailState9_control (s : AsmState 64) (pc : s.pc = 0x8000002c) :
    (tailState9 s).pc = 2147483740#64 ∧
    (tailState9 s).regs = (fun r => if r = 5 then 2684485648#64 else if r = 6 then 33806090240#64 else s.regs r) ∧
    (tailState9 s).memDomain = s.memDomain ∧
    (tailState9 s).lr = s.lr ∧ (tailState9 s).align = s.align ∧
    (tailState9 s).be = s.be := by
  have prev := tailState8_control s pc
  have obs := control_loc (tailState8 s) 5 537001916#64
  refine ⟨obs.1.trans ?_, ?_, obs.2.2.1.trans prev.2.2.1,
    obs.2.2.2.1.trans prev.2.2.2.1, obs.2.2.2.2.1.trans prev.2.2.2.2.1,
    obs.2.2.2.2.2.trans prev.2.2.2.2.2⟩
  · exact (congrArg (fun p : BitVec 64 => p + 8#64) prev.1).trans (by decide)
  ·
    have value := (congrArg (fun p : BitVec 64 => p + 537001916#64) prev.1).trans
      (show 2147483732#64 + 537001916#64 = 2684485648#64 by decide)
    have transformed := congrArg₂
      (fun (v : BitVec 64) (registers : Nat → BitVec 64) =>
        fun x => if x = 5 then v else registers x) value prev.2.1
    refine obs.2.1.trans (transformed.trans ?_)
    funext x
    norm_num [wordShift]
    all_goals first
      | (intro hx; subst x; norm_num)
      | (split_ifs <;> first | rfl | omega)

noncomputable def tailState10 (s : AsmState 64) := after (tailState9 s) (bootConst 6 63)

theorem tailState10_control (s : AsmState 64) (pc : s.pc = 0x8000002c) :
    (tailState10 s).pc = 2147483744#64 ∧
    (tailState10 s).regs = (fun r => if r = 5 then 2684485648#64 else if r = 6 then 63#64 else s.regs r) ∧
    (tailState10 s).memDomain = s.memDomain ∧
    (tailState10 s).lr = s.lr ∧ (tailState10 s).align = s.align ∧
    (tailState10 s).be = s.be := by
  have prev := tailState9_control s pc
  have obs := control_const (tailState9 s) 6 63#64 4 (by decide)
  refine ⟨obs.1.trans ?_, ?_, obs.2.2.1.trans prev.2.2.1,
    obs.2.2.2.1.trans prev.2.2.2.1, obs.2.2.2.2.1.trans prev.2.2.2.2.1,
    obs.2.2.2.2.2.trans prev.2.2.2.2.2⟩
  · exact (congrArg (fun p : BitVec 64 => p + 4#64) prev.1).trans (by decide)
  ·
    have transformed := congrArg
      (fun registers : Nat → BitVec 64 =>
        fun x => if x = 6 then 63#64 else registers x) prev.2.1
    refine obs.2.1.trans (transformed.trans ?_)
    funext x
    norm_num [wordShift]
    all_goals first
      | (intro hx; subst x; norm_num)
      | (split_ifs <;> first | rfl | omega)

noncomputable def tailState11 (s : AsmState 64) := after (tailState10 s) (bootShift 6 29)

theorem tailState11_control (s : AsmState 64) (pc : s.pc = 0x8000002c) :
    (tailState11 s).pc = 2147483748#64 ∧
    (tailState11 s).regs = (fun r => if r = 5 then 2684485648#64 else if r = 6 then 33822867456#64 else s.regs r) ∧
    (tailState11 s).memDomain = s.memDomain ∧
    (tailState11 s).lr = s.lr ∧ (tailState11 s).align = s.align ∧
    (tailState11 s).be = s.be := by
  have prev := tailState10_control s pc
  have obs := control_shift (tailState10 s) 6 29#64 4 (by decide)
  refine ⟨obs.1.trans ?_, ?_, obs.2.2.1.trans prev.2.2.1,
    obs.2.2.2.1.trans prev.2.2.2.1, obs.2.2.2.2.1.trans prev.2.2.2.2.1,
    obs.2.2.2.2.2.trans prev.2.2.2.2.2⟩
  · exact (congrArg (fun p : BitVec 64 => p + 4#64) prev.1).trans (by decide)
  ·
    have transformed := congrArg
      (fun registers : Nat → BitVec 64 =>
        fun x => if x = 6 then wordShift .lsl (registers 6) 29 else registers x) prev.2.1
    refine obs.2.1.trans (transformed.trans ?_)
    funext x
    norm_num [wordShift]
    all_goals first
      | (intro hx; subst x; norm_num)
      | (split_ifs <;> first | rfl | omega)

noncomputable def tailState12 (s : AsmState 64) := after (tailState11 s) (bootStore 6 5 0)

theorem tailState12_control (s : AsmState 64) (pc : s.pc = 0x8000002c) :
    (tailState12 s).pc = 2147483752#64 ∧
    (tailState12 s).regs = (fun r => if r = 5 then 2684485648#64 else if r = 6 then 33822867456#64 else s.regs r) ∧
    (tailState12 s).memDomain = s.memDomain ∧
    (tailState12 s).lr = s.lr ∧ (tailState12 s).align = s.align ∧
    (tailState12 s).be = s.be := by
  have prev := tailState11_control s pc
  have obs := control_store (tailState11 s) 6 5 0 4 (by decide)
  refine ⟨obs.1.trans ?_, obs.2.1.trans prev.2.1, obs.2.2.1.trans prev.2.2.1,
    obs.2.2.2.1.trans prev.2.2.2.1, obs.2.2.2.2.1.trans prev.2.2.2.2.1,
    obs.2.2.2.2.2.trans prev.2.2.2.2.2⟩
  exact (congrArg (fun p : BitVec 64 => p + 4) prev.1).trans (by decide)

noncomputable def tailState13 (s : AsmState 64) := after (tailState12 s) (bootConst 5 161)

theorem tailState13_control (s : AsmState 64) (pc : s.pc = 0x8000002c) :
    (tailState13 s).pc = 2147483756#64 ∧
    (tailState13 s).regs = (fun r => if r = 5 then 161#64 else if r = 6 then 33822867456#64 else s.regs r) ∧
    (tailState13 s).memDomain = s.memDomain ∧
    (tailState13 s).lr = s.lr ∧ (tailState13 s).align = s.align ∧
    (tailState13 s).be = s.be := by
  have prev := tailState12_control s pc
  have obs := control_const (tailState12 s) 5 161#64 4 (by decide)
  refine ⟨obs.1.trans ?_, ?_, obs.2.2.1.trans prev.2.2.1,
    obs.2.2.2.1.trans prev.2.2.2.1, obs.2.2.2.2.1.trans prev.2.2.2.2.1,
    obs.2.2.2.2.2.trans prev.2.2.2.2.2⟩
  · exact (congrArg (fun p : BitVec 64 => p + 4#64) prev.1).trans (by decide)
  ·
    have transformed := congrArg
      (fun registers : Nat → BitVec 64 =>
        fun x => if x = 5 then 161#64 else registers x) prev.2.1
    refine obs.2.1.trans (transformed.trans ?_)
    funext x
    norm_num [wordShift]
    all_goals first
      | (intro hx; subst x; norm_num)
      | (split_ifs <;> first | rfl | omega)

noncomputable def tailState14 (s : AsmState 64) := after (tailState13 s) (bootShift 5 24)

theorem tailState14_control (s : AsmState 64) (pc : s.pc = 0x8000002c) :
    (tailState14 s).pc = 2147483760#64 ∧
    (tailState14 s).regs = (fun r => if r = 5 then 2701131776#64 else if r = 6 then 33822867456#64 else s.regs r) ∧
    (tailState14 s).memDomain = s.memDomain ∧
    (tailState14 s).lr = s.lr ∧ (tailState14 s).align = s.align ∧
    (tailState14 s).be = s.be := by
  have prev := tailState13_control s pc
  have obs := control_shift (tailState13 s) 5 24#64 4 (by decide)
  refine ⟨obs.1.trans ?_, ?_, obs.2.2.1.trans prev.2.2.1,
    obs.2.2.2.1.trans prev.2.2.2.1, obs.2.2.2.2.1.trans prev.2.2.2.2.1,
    obs.2.2.2.2.2.trans prev.2.2.2.2.2⟩
  · exact (congrArg (fun p : BitVec 64 => p + 4#64) prev.1).trans (by decide)
  ·
    have transformed := congrArg
      (fun registers : Nat → BitVec 64 =>
        fun x => if x = 5 then wordShift .lsl (registers 5) 24 else registers x) prev.2.1
    refine obs.2.1.trans (transformed.trans ?_)
    funext x
    norm_num [wordShift]
    all_goals first
      | (intro hx; subst x; norm_num)
      | (split_ifs <;> first | rfl | omega)

noncomputable def tailState15 (s : AsmState 64) := after (tailState14 s) (bootLoc 6 0x80000070 (initDataRam+24))

theorem tailState15_control (s : AsmState 64) (pc : s.pc = 0x8000002c) :
    (tailState15 s).pc = 2147483768#64 ∧
    (tailState15 s).regs = (fun r => if r = 5 then 2701131776#64 else if r = 6 then 2684485656#64 else s.regs r) ∧
    (tailState15 s).memDomain = s.memDomain ∧
    (tailState15 s).lr = s.lr ∧ (tailState15 s).align = s.align ∧
    (tailState15 s).be = s.be := by
  have prev := tailState14_control s pc
  have obs := control_loc (tailState14 s) 6 537001896#64
  refine ⟨obs.1.trans ?_, ?_, obs.2.2.1.trans prev.2.2.1,
    obs.2.2.2.1.trans prev.2.2.2.1, obs.2.2.2.2.1.trans prev.2.2.2.2.1,
    obs.2.2.2.2.2.trans prev.2.2.2.2.2⟩
  · exact (congrArg (fun p : BitVec 64 => p + 8#64) prev.1).trans (by decide)
  ·
    have value := (congrArg (fun p : BitVec 64 => p + 537001896#64) prev.1).trans
      (show 2147483760#64 + 537001896#64 = 2684485656#64 by decide)
    have transformed := congrArg₂
      (fun (v : BitVec 64) (registers : Nat → BitVec 64) =>
        fun x => if x = 6 then v else registers x) value prev.2.1
    refine obs.2.1.trans (transformed.trans ?_)
    funext x
    norm_num [wordShift]
    all_goals first
      | (intro hx; subst x; norm_num)
      | (split_ifs <;> first | rfl | omega)

noncomputable def tailState16 (s : AsmState 64) := after (tailState15 s) (bootStore 6 5 0)

theorem tailState16_control (s : AsmState 64) (pc : s.pc = 0x8000002c) :
    (tailState16 s).pc = 2147483772#64 ∧
    (tailState16 s).regs = (fun r => if r = 5 then 2701131776#64 else if r = 6 then 2684485656#64 else s.regs r) ∧
    (tailState16 s).memDomain = s.memDomain ∧
    (tailState16 s).lr = s.lr ∧ (tailState16 s).align = s.align ∧
    (tailState16 s).be = s.be := by
  have prev := tailState15_control s pc
  have obs := control_store (tailState15 s) 6 5 0 4 (by decide)
  refine ⟨obs.1.trans ?_, obs.2.1.trans prev.2.1, obs.2.2.1.trans prev.2.2.1,
    obs.2.2.2.1.trans prev.2.2.2.1, obs.2.2.2.2.1.trans prev.2.2.2.2.1,
    obs.2.2.2.2.2.trans prev.2.2.2.2.2⟩
  exact (congrArg (fun p : BitVec 64 => p + 4) prev.1).trans (by decide)

noncomputable def tailState17 (s : AsmState 64) := after (tailState16 s) (bootLoc 6 0x8000007c initDataEnd)

theorem tailState17_control (s : AsmState 64) (pc : s.pc = 0x8000002c) :
    (tailState17 s).pc = 2147483780#64 ∧
    (tailState17 s).regs = (fun r => if r = 5 then 2701131776#64 else if r = 6 then 2684522480#64 else s.regs r) ∧
    (tailState17 s).memDomain = s.memDomain ∧
    (tailState17 s).lr = s.lr ∧ (tailState17 s).align = s.align ∧
    (tailState17 s).be = s.be := by
  have prev := tailState16_control s pc
  have obs := control_loc (tailState16 s) 6 537038708#64
  refine ⟨obs.1.trans ?_, ?_, obs.2.2.1.trans prev.2.2.1,
    obs.2.2.2.1.trans prev.2.2.2.1, obs.2.2.2.2.1.trans prev.2.2.2.2.1,
    obs.2.2.2.2.2.trans prev.2.2.2.2.2⟩
  · exact (congrArg (fun p : BitVec 64 => p + 8#64) prev.1).trans (by decide)
  ·
    have value := (congrArg (fun p : BitVec 64 => p + 537038708#64) prev.1).trans
      (show 2147483772#64 + 537038708#64 = 2684522480#64 by decide)
    have transformed := congrArg₂
      (fun (v : BitVec 64) (registers : Nat → BitVec 64) =>
        fun x => if x = 6 then v else registers x) value prev.2.1
    refine obs.2.1.trans (transformed.trans ?_)
    funext x
    norm_num [wordShift]
    all_goals first
      | (intro hx; subst x; norm_num)
      | (split_ifs <;> first | rfl | omega)

noncomputable def tailState18 (s : AsmState 64) := after (tailState17 s) (bootStore 6 5 8)

theorem tailState18_control (s : AsmState 64) (pc : s.pc = 0x8000002c) :
    (tailState18 s).pc = 2147483784#64 ∧
    (tailState18 s).regs = (fun r => if r = 5 then 2701131776#64 else if r = 6 then 2684522480#64 else s.regs r) ∧
    (tailState18 s).memDomain = s.memDomain ∧
    (tailState18 s).lr = s.lr ∧ (tailState18 s).align = s.align ∧
    (tailState18 s).be = s.be := by
  have prev := tailState17_control s pc
  have obs := control_store (tailState17 s) 6 5 8 4 (by decide)
  refine ⟨obs.1.trans ?_, obs.2.1.trans prev.2.1, obs.2.2.1.trans prev.2.2.1,
    obs.2.2.2.1.trans prev.2.2.2.1, obs.2.2.2.2.1.trans prev.2.2.2.2.1,
    obs.2.2.2.2.2.trans prev.2.2.2.2.2⟩
  exact (congrArg (fun p : BitVec 64 => p + 4) prev.1).trans (by decide)

noncomputable def tailState19 (s : AsmState 64) := after (tailState18 s) (bootLoc 6 0x80000088 initDataEnd)

theorem tailState19_control (s : AsmState 64) (pc : s.pc = 0x8000002c) :
    (tailState19 s).pc = 2147483792#64 ∧
    (tailState19 s).regs = (fun r => if r = 5 then 2701131776#64 else if r = 6 then 2684522480#64 else s.regs r) ∧
    (tailState19 s).memDomain = s.memDomain ∧
    (tailState19 s).lr = s.lr ∧ (tailState19 s).align = s.align ∧
    (tailState19 s).be = s.be := by
  have prev := tailState18_control s pc
  have obs := control_loc (tailState18 s) 6 537038696#64
  refine ⟨obs.1.trans ?_, ?_, obs.2.2.1.trans prev.2.2.1,
    obs.2.2.2.1.trans prev.2.2.2.1, obs.2.2.2.2.1.trans prev.2.2.2.2.1,
    obs.2.2.2.2.2.trans prev.2.2.2.2.2⟩
  · exact (congrArg (fun p : BitVec 64 => p + 8#64) prev.1).trans (by decide)
  ·
    have value := (congrArg (fun p : BitVec 64 => p + 537038696#64) prev.1).trans
      (show 2147483784#64 + 537038696#64 = 2684522480#64 by decide)
    have transformed := congrArg₂
      (fun (v : BitVec 64) (registers : Nat → BitVec 64) =>
        fun x => if x = 6 then v else registers x) value prev.2.1
    refine obs.2.1.trans (transformed.trans ?_)
    funext x
    norm_num [wordShift]
    all_goals first
      | (intro hx; subst x; norm_num)
      | (split_ifs <;> first | rfl | omega)

noncomputable def tailState20 (s : AsmState 64) := after (tailState19 s) (bootStore 6 5 16)

theorem tailState20_control (s : AsmState 64) (pc : s.pc = 0x8000002c) :
    (tailState20 s).pc = 2147483796#64 ∧
    (tailState20 s).regs = (fun r => if r = 5 then 2701131776#64 else if r = 6 then 2684522480#64 else s.regs r) ∧
    (tailState20 s).memDomain = s.memDomain ∧
    (tailState20 s).lr = s.lr ∧ (tailState20 s).align = s.align ∧
    (tailState20 s).be = s.be := by
  have prev := tailState19_control s pc
  have obs := control_store (tailState19 s) 6 5 16 4 (by decide)
  refine ⟨obs.1.trans ?_, obs.2.1.trans prev.2.1, obs.2.2.1.trans prev.2.2.1,
    obs.2.2.2.1.trans prev.2.2.2.1, obs.2.2.2.2.1.trans prev.2.2.2.2.1,
    obs.2.2.2.2.2.trans prev.2.2.2.2.2⟩
  exact (congrArg (fun p : BitVec 64 => p + 4) prev.1).trans (by decide)

noncomputable def tailState21 (s : AsmState 64) := after (tailState20 s) (bootLoc 6 0x80000094 0x800f0134)

theorem tailState21_control (s : AsmState 64) (pc : s.pc = 0x8000002c) :
    (tailState21 s).pc = 2147483804#64 ∧
    (tailState21 s).regs = (fun r => if r = 5 then 2701131776#64 else if r = 6 then 2148466996#64 else s.regs r) ∧
    (tailState21 s).memDomain = s.memDomain ∧
    (tailState21 s).lr = s.lr ∧ (tailState21 s).align = s.align ∧
    (tailState21 s).be = s.be := by
  have prev := tailState20_control s pc
  have obs := control_loc (tailState20 s) 6 983200#64
  refine ⟨obs.1.trans ?_, ?_, obs.2.2.1.trans prev.2.2.1,
    obs.2.2.2.1.trans prev.2.2.2.1, obs.2.2.2.2.1.trans prev.2.2.2.2.1,
    obs.2.2.2.2.2.trans prev.2.2.2.2.2⟩
  · exact (congrArg (fun p : BitVec 64 => p + 8#64) prev.1).trans (by decide)
  ·
    have value := (congrArg (fun p : BitVec 64 => p + 983200#64) prev.1).trans
      (show 2147483796#64 + 983200#64 = 2148466996#64 by decide)
    have transformed := congrArg₂
      (fun (v : BitVec 64) (registers : Nat → BitVec 64) =>
        fun x => if x = 6 then v else registers x) value prev.2.1
    refine obs.2.1.trans (transformed.trans ?_)
    funext x
    norm_num [wordShift]
    all_goals first
      | (intro hx; subst x; norm_num)
      | (split_ifs <;> first | rfl | omega)

noncomputable def tailState22 (s : AsmState 64) := after (tailState21 s) (bootStore 6 5 24)

theorem tailState22_control (s : AsmState 64) (pc : s.pc = 0x8000002c) :
    (tailState22 s).pc = 2147483808#64 ∧
    (tailState22 s).regs = (fun r => if r = 5 then 2701131776#64 else if r = 6 then 2148466996#64 else s.regs r) ∧
    (tailState22 s).memDomain = s.memDomain ∧
    (tailState22 s).lr = s.lr ∧ (tailState22 s).align = s.align ∧
    (tailState22 s).be = s.be := by
  have prev := tailState21_control s pc
  have obs := control_store (tailState21 s) 6 5 24 4 (by decide)
  refine ⟨obs.1.trans ?_, obs.2.1.trans prev.2.1, obs.2.2.1.trans prev.2.2.1,
    obs.2.2.2.1.trans prev.2.2.2.1, obs.2.2.2.2.1.trans prev.2.2.2.2.1,
    obs.2.2.2.2.2.trans prev.2.2.2.2.2⟩
  exact (congrArg (fun p : BitVec 64 => p + 4) prev.1).trans (by decide)

noncomputable def tailState23 (s : AsmState 64) := after (tailState22 s) (bootLoc 6 0x800000a0 0x800f1000)

theorem tailState23_control (s : AsmState 64) (pc : s.pc = 0x8000002c) :
    (tailState23 s).pc = 2147483816#64 ∧
    (tailState23 s).regs = (fun r => if r = 5 then 2701131776#64 else if r = 6 then 2148470784#64 else s.regs r) ∧
    (tailState23 s).memDomain = s.memDomain ∧
    (tailState23 s).lr = s.lr ∧ (tailState23 s).align = s.align ∧
    (tailState23 s).be = s.be := by
  have prev := tailState22_control s pc
  have obs := control_loc (tailState22 s) 6 986976#64
  refine ⟨obs.1.trans ?_, ?_, obs.2.2.1.trans prev.2.2.1,
    obs.2.2.2.1.trans prev.2.2.2.1, obs.2.2.2.2.1.trans prev.2.2.2.2.1,
    obs.2.2.2.2.2.trans prev.2.2.2.2.2⟩
  · exact (congrArg (fun p : BitVec 64 => p + 8#64) prev.1).trans (by decide)
  ·
    have value := (congrArg (fun p : BitVec 64 => p + 986976#64) prev.1).trans
      (show 2147483808#64 + 986976#64 = 2148470784#64 by decide)
    have transformed := congrArg₂
      (fun (v : BitVec 64) (registers : Nat → BitVec 64) =>
        fun x => if x = 6 then v else registers x) value prev.2.1
    refine obs.2.1.trans (transformed.trans ?_)
    funext x
    norm_num [wordShift]
    all_goals first
      | (intro hx; subst x; norm_num)
      | (split_ifs <;> first | rfl | omega)

noncomputable def tailState24 (s : AsmState 64) := after (tailState23 s) (bootStore 6 5 32)

theorem tailState24_control (s : AsmState 64) (pc : s.pc = 0x8000002c) :
    (tailState24 s).pc = 2147483820#64 ∧
    (tailState24 s).regs = (fun r => if r = 5 then 2701131776#64 else if r = 6 then 2148470784#64 else s.regs r) ∧
    (tailState24 s).memDomain = s.memDomain ∧
    (tailState24 s).lr = s.lr ∧ (tailState24 s).align = s.align ∧
    (tailState24 s).be = s.be := by
  have prev := tailState23_control s pc
  have obs := control_store (tailState23 s) 6 5 32 4 (by decide)
  refine ⟨obs.1.trans ?_, obs.2.1.trans prev.2.1, obs.2.2.1.trans prev.2.2.1,
    obs.2.2.2.1.trans prev.2.2.2.1, obs.2.2.2.2.1.trans prev.2.2.2.2.1,
    obs.2.2.2.2.2.trans prev.2.2.2.2.2⟩
  exact (congrArg (fun p : BitVec 64 => p + 4) prev.1).trans (by decide)

noncomputable def tailState25 (s : AsmState 64) := after (tailState24 s) (bootConst 11 161)

theorem tailState25_control (s : AsmState 64) (pc : s.pc = 0x8000002c) :
    (tailState25 s).pc = 2147483824#64 ∧
    (tailState25 s).regs = (fun r => if r = 5 then 2701131776#64 else if r = 6 then 2148470784#64 else if r = 11 then 161#64 else s.regs r) ∧
    (tailState25 s).memDomain = s.memDomain ∧
    (tailState25 s).lr = s.lr ∧ (tailState25 s).align = s.align ∧
    (tailState25 s).be = s.be := by
  have prev := tailState24_control s pc
  have obs := control_const (tailState24 s) 11 161#64 4 (by decide)
  refine ⟨obs.1.trans ?_, ?_, obs.2.2.1.trans prev.2.2.1,
    obs.2.2.2.1.trans prev.2.2.2.1, obs.2.2.2.2.1.trans prev.2.2.2.2.1,
    obs.2.2.2.2.2.trans prev.2.2.2.2.2⟩
  · exact (congrArg (fun p : BitVec 64 => p + 4#64) prev.1).trans (by decide)
  ·
    have transformed := congrArg
      (fun registers : Nat → BitVec 64 =>
        fun x => if x = 11 then 161#64 else registers x) prev.2.1
    refine obs.2.1.trans (transformed.trans ?_)
    funext x
    norm_num [wordShift]
    all_goals first
      | (intro hx; subst x; norm_num)
      | (split_ifs <;> first | rfl | omega)

noncomputable def tailState26 (s : AsmState 64) := after (tailState25 s) (bootShift 11 24)

theorem tailState26_control (s : AsmState 64) (pc : s.pc = 0x8000002c) :
    (tailState26 s).pc = 2147483828#64 ∧
    (tailState26 s).regs = (fun r => if r = 5 then 2701131776#64 else if r = 6 then 2148470784#64 else if r = 11 then 2701131776#64 else s.regs r) ∧
    (tailState26 s).memDomain = s.memDomain ∧
    (tailState26 s).lr = s.lr ∧ (tailState26 s).align = s.align ∧
    (tailState26 s).be = s.be := by
  have prev := tailState25_control s pc
  have obs := control_shift (tailState25 s) 11 24#64 4 (by decide)
  refine ⟨obs.1.trans ?_, ?_, obs.2.2.1.trans prev.2.2.1,
    obs.2.2.2.1.trans prev.2.2.2.1, obs.2.2.2.2.1.trans prev.2.2.2.2.1,
    obs.2.2.2.2.2.trans prev.2.2.2.2.2⟩
  · exact (congrArg (fun p : BitVec 64 => p + 4#64) prev.1).trans (by decide)
  ·
    have transformed := congrArg
      (fun registers : Nat → BitVec 64 =>
        fun x => if x = 11 then wordShift .lsl (registers 11) 24 else registers x) prev.2.1
    refine obs.2.1.trans (transformed.trans ?_)
    funext x
    norm_num [wordShift]
    all_goals first
      | (intro hx; subst x; norm_num)
      | (split_ifs <;> first | rfl | omega)

noncomputable def tailState27 (s : AsmState 64) := after (tailState26 s) (bootConst 12 2015)

theorem tailState27_control (s : AsmState 64) (pc : s.pc = 0x8000002c) :
    (tailState27 s).pc = 2147483832#64 ∧
    (tailState27 s).regs = (fun r => if r = 5 then 2701131776#64 else if r = 6 then 2148470784#64 else if r = 11 then 2701131776#64 else if r = 12 then 2015#64 else s.regs r) ∧
    (tailState27 s).memDomain = s.memDomain ∧
    (tailState27 s).lr = s.lr ∧ (tailState27 s).align = s.align ∧
    (tailState27 s).be = s.be := by
  have prev := tailState26_control s pc
  have obs := control_const (tailState26 s) 12 2015#64 4 (by decide)
  refine ⟨obs.1.trans ?_, ?_, obs.2.2.1.trans prev.2.2.1,
    obs.2.2.2.1.trans prev.2.2.2.1, obs.2.2.2.2.1.trans prev.2.2.2.2.1,
    obs.2.2.2.2.2.trans prev.2.2.2.2.2⟩
  · exact (congrArg (fun p : BitVec 64 => p + 4#64) prev.1).trans (by decide)
  ·
    have transformed := congrArg
      (fun registers : Nat → BitVec 64 =>
        fun x => if x = 12 then 2015#64 else registers x) prev.2.1
    refine obs.2.1.trans (transformed.trans ?_)
    funext x
    norm_num [wordShift]
    all_goals first
      | (intro hx; subst x; norm_num)
      | (split_ifs <;> first | rfl | omega)

noncomputable def tailState28 (s : AsmState 64) := after (tailState27 s) (bootShift 12 24)

theorem tailState28_control (s : AsmState 64) (pc : s.pc = 0x8000002c) :
    (tailState28 s).pc = 2147483836#64 ∧
    (tailState28 s).regs = (fun r => if r = 5 then 2701131776#64 else if r = 6 then 2148470784#64 else if r = 11 then 2701131776#64 else if r = 12 then 33806090240#64 else s.regs r) ∧
    (tailState28 s).memDomain = s.memDomain ∧
    (tailState28 s).lr = s.lr ∧ (tailState28 s).align = s.align ∧
    (tailState28 s).be = s.be := by
  have prev := tailState27_control s pc
  have obs := control_shift (tailState27 s) 12 24#64 4 (by decide)
  refine ⟨obs.1.trans ?_, ?_, obs.2.2.1.trans prev.2.2.1,
    obs.2.2.2.1.trans prev.2.2.2.1, obs.2.2.2.2.1.trans prev.2.2.2.2.1,
    obs.2.2.2.2.2.trans prev.2.2.2.2.2⟩
  · exact (congrArg (fun p : BitVec 64 => p + 4#64) prev.1).trans (by decide)
  ·
    have transformed := congrArg
      (fun registers : Nat → BitVec 64 =>
        fun x => if x = 12 then wordShift .lsl (registers 12) 24 else registers x) prev.2.1
    refine obs.2.1.trans (transformed.trans ?_)
    funext x
    norm_num [wordShift]
    all_goals first
      | (intro hx; subst x; norm_num)
      | (split_ifs <;> first | rfl | omega)

noncomputable def tailState29 (s : AsmState 64) := after (tailState28 s) (bootConst 13 63)

theorem tailState29_control (s : AsmState 64) (pc : s.pc = 0x8000002c) :
    (tailState29 s).pc = 2147483840#64 ∧
    (tailState29 s).regs = (fun r => if r = 5 then 2701131776#64 else if r = 6 then 2148470784#64 else if r = 11 then 2701131776#64 else if r = 12 then 33806090240#64 else if r = 13 then 63#64 else s.regs r) ∧
    (tailState29 s).memDomain = s.memDomain ∧
    (tailState29 s).lr = s.lr ∧ (tailState29 s).align = s.align ∧
    (tailState29 s).be = s.be := by
  have prev := tailState28_control s pc
  have obs := control_const (tailState28 s) 13 63#64 4 (by decide)
  refine ⟨obs.1.trans ?_, ?_, obs.2.2.1.trans prev.2.2.1,
    obs.2.2.2.1.trans prev.2.2.2.1, obs.2.2.2.2.1.trans prev.2.2.2.2.1,
    obs.2.2.2.2.2.trans prev.2.2.2.2.2⟩
  · exact (congrArg (fun p : BitVec 64 => p + 4#64) prev.1).trans (by decide)
  ·
    have transformed := congrArg
      (fun registers : Nat → BitVec 64 =>
        fun x => if x = 13 then 63#64 else registers x) prev.2.1
    refine obs.2.1.trans (transformed.trans ?_)
    funext x
    norm_num [wordShift]
    all_goals first
      | (intro hx; subst x; norm_num)
      | (split_ifs <;> first | rfl | omega)

noncomputable def tailState30 (s : AsmState 64) := after (tailState29 s) (bootShift 13 29)

theorem tailState30_control (s : AsmState 64) (pc : s.pc = 0x8000002c) :
    (tailState30 s).pc = 2147483844#64 ∧
    (tailState30 s).regs = (fun r => if r = 5 then 2701131776#64 else if r = 6 then 2148470784#64 else if r = 11 then 2701131776#64 else if r = 12 then 33806090240#64 else if r = 13 then 33822867456#64 else s.regs r) ∧
    (tailState30 s).memDomain = s.memDomain ∧
    (tailState30 s).lr = s.lr ∧ (tailState30 s).align = s.align ∧
    (tailState30 s).be = s.be := by
  have prev := tailState29_control s pc
  have obs := control_shift (tailState29 s) 13 29#64 4 (by decide)
  refine ⟨obs.1.trans ?_, ?_, obs.2.2.1.trans prev.2.2.1,
    obs.2.2.2.1.trans prev.2.2.2.1, obs.2.2.2.2.1.trans prev.2.2.2.2.1,
    obs.2.2.2.2.2.trans prev.2.2.2.2.2⟩
  · exact (congrArg (fun p : BitVec 64 => p + 4#64) prev.1).trans (by decide)
  ·
    have transformed := congrArg
      (fun registers : Nat → BitVec 64 =>
        fun x => if x = 13 then wordShift .lsl (registers 13) 29 else registers x) prev.2.1
    refine obs.2.1.trans (transformed.trans ?_)
    funext x
    norm_num [wordShift]
    all_goals first
      | (intro hx; subst x; norm_num)
      | (split_ifs <;> first | rfl | omega)

noncomputable def tailState31 (s : AsmState 64) := after (tailState30 s) (bootLoc 10 0x800000c4 nativePc)

theorem tailState31_control (s : AsmState 64) (pc : s.pc = 0x8000002c) :
    (tailState31 s).pc = 2147483852#64 ∧
    (tailState31 s).regs = (fun r => if r = 5 then 2701131776#64 else if r = 6 then 2148470784#64 else if r = 10 then 2147487856#64 else if r = 11 then 2701131776#64 else if r = 12 then 33806090240#64 else if r = 13 then 33822867456#64 else s.regs r) ∧
    (tailState31 s).memDomain = s.memDomain ∧
    (tailState31 s).lr = s.lr ∧ (tailState31 s).align = s.align ∧
    (tailState31 s).be = s.be := by
  have prev := tailState30_control s pc
  have obs := control_loc (tailState30 s) 10 4012#64
  refine ⟨obs.1.trans ?_, ?_, obs.2.2.1.trans prev.2.2.1,
    obs.2.2.2.1.trans prev.2.2.2.1, obs.2.2.2.2.1.trans prev.2.2.2.2.1,
    obs.2.2.2.2.2.trans prev.2.2.2.2.2⟩
  · exact (congrArg (fun p : BitVec 64 => p + 8#64) prev.1).trans (by decide)
  ·
    have value := (congrArg (fun p : BitVec 64 => p + 4012#64) prev.1).trans
      (show 2147483844#64 + 4012#64 = 2147487856#64 by decide)
    have transformed := congrArg₂
      (fun (v : BitVec 64) (registers : Nat → BitVec 64) =>
        fun x => if x = 10 then v else registers x) value prev.2.1
    refine obs.2.1.trans (transformed.trans ?_)
    funext x
    norm_num [wordShift]
    all_goals first
      | (intro hx; subst x; norm_num)
      | (split_ifs <;> first | rfl | omega)

noncomputable def tailState32 (s : AsmState 64) := after (tailState31 s) (.jump (BitVec.ofNat 64 nativePc - 0x800000cc))

theorem tailState32_control (s : AsmState 64) (pc : s.pc = 0x8000002c) :
    (tailState32 s).pc = 2147487856#64 ∧
    (tailState32 s).regs = (fun r => if r = 5 then 2701131776#64 else if r = 6 then 2148470784#64 else if r = 10 then 2147487856#64 else if r = 11 then 2701131776#64 else if r = 12 then 33806090240#64 else if r = 13 then 33822867456#64 else s.regs r) ∧
    (tailState32 s).memDomain = s.memDomain ∧
    (tailState32 s).lr = s.lr ∧ (tailState32 s).align = s.align ∧
    (tailState32 s).be = s.be := by
  have prev := tailState31_control s pc
  have obs := control_jump (tailState31 s) 4004#64
  refine ⟨obs.1.trans ?_, ?_, obs.2.2.1.trans prev.2.2.1,
    obs.2.2.2.1.trans prev.2.2.2.1, obs.2.2.2.2.1.trans prev.2.2.2.2.1,
    obs.2.2.2.2.2.trans prev.2.2.2.2.2⟩
  · exact (congrArg (fun p : BitVec 64 => p + 4004#64) prev.1).trans (by decide)
  · exact obs.2.1.trans prev.2.1

theorem tail_run_state (s : AsmState 64) : run tailCode s = tailState32 s := by rfl

/-- Exact calculated assembler endpoint of the straight-line tail. -/
noncomputable def tailEndpoint : AsmState 64 := run tailCode (copyState 4606)

theorem tail_endpoint_fields :
    tailEndpoint.pc = BitVec.ofNat 64 nativePc ∧
    tailEndpoint.regs 10 = BitVec.ofNat 64 nativePc ∧
    tailEndpoint.regs 11 = BitVec.ofNat 64 sourceBase ∧
    tailEndpoint.regs 12 = BitVec.ofNat 64 stackStart ∧
    tailEndpoint.regs 13 = BitVec.ofNat 64 ramEnd ∧
    tailEndpoint.memDomain = bootstrapDomain ∧
    tailEndpoint.lr = 1 ∧ tailEndpoint.align = 2 ∧ tailEndpoint.be = false := by
  have fields := copyState_fields 4606
  have control := tailState32_control (copyState 4606) (by simpa using copyState_pc 4606 (by omega))
  simp only [tailEndpoint, tail_run_state]
  simp [control.1, control.2.1, control.2.2.1, control.2.2.2.1, control.2.2.2.2.1,
    control.2.2.2.2.2, fields.1, fields.2.1, fields.2.2.2.1, fields.2.2.2.2,
    nativePc, sourceBase, stackStart, stackSize, ramEnd, ramStart, ramSize]

/-- The bootstrap also establishes the complete expected register map. -/
theorem tail_endpoint_registers : tailEndpoint.regs = installedRegisters := by
  have fields := copyState_fields 4606
  have control := tailState32_control (copyState 4606)
    (by simpa using copyState_pc 4606 (by omega))
  have registers := (congrArg AsmState.regs (tail_run_state (copyState 4606))).trans control.2.1
  change (run tailCode (copyState 4606)).regs = installedRegisters
  rw [registers]
  funext r
  by_cases h5 : r = 5
  · subst r; simp [installedRegisters, sourceBase]
  by_cases h6 : r = 6
  · subst r; simp [installedRegisters]
  by_cases h10 : r = 10
  · subst r; simp [installedRegisters, nativePc]
  by_cases h11 : r = 11
  · subst r; simp [installedRegisters, sourceBase]
  by_cases h12 : r = 12
  · subst r; simp [installedRegisters, stackStart, stackSize, ramEnd, ramStart, ramSize]
  by_cases h13 : r = 13
  · subst r; simp [installedRegisters, ramEnd, ramStart, ramSize]
  simp only [if_neg h5, if_neg h6, if_neg h10, if_neg h11, if_neg h12, if_neg h13]
  by_cases h7 : r = 7
  · subst r
    simpa [installedRegisters, initDataEnd] using fields.2.2.1
  by_cases h28 : r = 28
  · subst r
    simpa [installedRegisters] using InitECandidate.Proofs.BootstrapCopy.copyExit_loaded_register
  rw [copyState_other_register 4606 r h5 h6 h28]
  simp [copyEntryAsm, initialAsm, installedRegisters, h5, h6, h7, h10, h11, h12, h13, h28]

private theorem load_fpRegs {width : Nat} [NeZero width] (n r : Nat)
    (a : HolAddr width) (s : AsmState width) : (memLoad n r a s).fpRegs = s.fpRegs := by
  simp [memLoad, Flapjack.Compiler.Backend.LabToTarget.readMemWord_eq,
    assertState, updReg]

private theorem store_fpRegs {width : Nat} [NeZero width] (n r : Nat)
    (a : HolAddr width) (s : AsmState width) : (memStore n r a s).fpRegs = s.fpRegs :=
  (source_memstore_frame n r a s).2.2.1

/-- The integer assembler preserves the compatibility floating-point map. -/
theorem asmUpd_fpRegs {width : Nat} [NeZero width] (i : HolAsm width)
    (nextPc : BitVec width) (s : AsmState width) : (asmUpd i nextPc s).fpRegs = s.fpRegs := by
  cases i with
  | inst instruction =>
    cases instruction with
    | skip => rfl
    | const => rfl
    | arith operation =>
      cases operation <;> simp [asmUpd, instUpd, arithUpd, binopUpd, updPc, updReg, assertState]
    | mem operation r a =>
      cases operation <;> simp only [asmUpd, instUpd, memOp, updPc,
        load_fpRegs, store_fpRegs]
  | jump => rfl
  | jumpCmp => simp [asmUpd, jumpToOffset, updPc]; split <;> rfl
  | call => rfl
  | jumpReg => rfl
  | loc => rfl

theorem run_fpRegs (code : List (HolAsm 64)) (s : AsmState 64) :
    (run code s).fpRegs = s.fpRegs := by
  induction code generalizing s with
  | nil => rfl
  | cons i rest ih =>
    exact (ih (after s i)).trans (asmUpd_fpRegs i _ s)

theorem copyState_fpRegs (count : Nat) : (copyState count).fpRegs = initialAsm.fpRegs := by
  have state := congrArg AsmState.fpRegs (loopProgram_run count copyEntryAsm)
  exact state.symm.trans (run_fpRegs (loopProgram count) copyEntryAsm)

/-- A nonempty checked instruction list has a nonfailed calculated endpoint. -/
theorem checked_endpoint_nonfailed (code : List (HolAsm 64)) (s : AsmState 64)
    (checks : Checked code s) (nonempty : code ≠ []) : ¬ (run code s).failed := by
  induction code generalizing s with
  | nil => exact False.elim (nonempty rfl)
  | cons i rest ih =>
    cases rest with
    | nil => exact checks.1.2.2.2.2.2.1
    | cons j more => exact ih (after s i) checks.2 (by simp)

private theorem state_ext {width : Nat} [NeZero width] {s t : AsmState width}
    (regs : s.regs = t.regs) (fp : s.fpRegs = t.fpRegs) (mem : s.mem = t.mem)
    (domain : s.memDomain = t.memDomain) (pc : s.pc = t.pc) (lr : s.lr = t.lr)
    (alignment : s.align = t.align) (be : s.be = t.be) (failed : s.failed = t.failed) :
    s = t := by
  cases s
  cases t
  cases regs
  cases fp
  cases mem
  cases domain
  cases pc
  cases lr
  cases alignment
  cases be
  cases failed
  rfl

/-- Once local tail admission is proved, every ASM field equals the canonical
installed state. All fields besides failure were calculated independently. -/
theorem tail_endpoint_eq (checks : Checked tailCode (copyState 4606)) :
    tailEndpoint = installedAsm := by
  have fp := (run_fpRegs tailCode (copyState 4606)).trans (copyState_fpRegs 4606)
  have nonfailed := checked_endpoint_nonfailed tailCode (copyState 4606) checks (by decide)
  have fields := tail_endpoint_fields
  apply state_ext
  · exact tail_endpoint_registers
  · exact fp
  · exact tail_copy_memory
  · exact fields.2.2.2.2.2.1
  · exact fields.1
  · exact fields.2.2.2.2.2.2.1
  · exact fields.2.2.2.2.2.2.2.1
  · exact fields.2.2.2.2.2.2.2.2
  · change (run tailCode (copyState 4606)).failed = false
    simpa only [Bool.not_eq_true] using nonfailed

end InitECandidate.Proofs.BootstrapStraightLine
