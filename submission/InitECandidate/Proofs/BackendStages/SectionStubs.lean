import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.NamedStubs
import Flapjack.Compiler.Backend.StackToLab.Native
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def SectionStubs : LabSem.LabProgHOL 64 :=
[{ sectionId := 0,
    lines :=
      [Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.arith
                (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 13
                  (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.arith
                (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 1 1
                  (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.arith
                (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 1 1
                  (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.arith
                (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
                  (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.arith
                (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
                  (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 2040#64)))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.arith
                (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 11
                  (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.arith
                (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 13 13
                  (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.labAsm
          (Flapjack.Compiler.Backend.LabLang.AsmWithLab.jumpCmp Flapjack.Cmp.lower 12
            (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11) (Flapjack.Compiler.Backend.LabLang.Lab.lab 0 3))
          0#64 [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.labAsm
          (Flapjack.Compiler.Backend.LabLang.AsmWithLab.jumpCmp Flapjack.Cmp.notLower 13
            (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12) (Flapjack.Compiler.Backend.LabLang.Lab.lab 0 2))
          0#64 [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.arith
                (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 1
                  (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.label 0 2 0,
        Flapjack.Compiler.Backend.LabLang.Line.labAsm
          (Flapjack.Compiler.Backend.LabLang.AsmWithLab.jump (Flapjack.Compiler.Backend.LabLang.Lab.lab 0 4)) 0#64 [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.label 0 3 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.arith
                (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 1
                  (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.label 0 4 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2040#64)))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.arith
                (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 11 11
                  (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.arith
                (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 13 13
                  (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.arith
                (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 12
                  (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.arith
                (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 1 1
                  (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 72057594037927928#64)))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.labAsm
          (Flapjack.Compiler.Backend.LabLang.AsmWithLab.jumpCmp Flapjack.Cmp.notLower 5
            (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) (Flapjack.Compiler.Backend.LabLang.Lab.lab 0 5))
          0#64 [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.arith
                (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 11
                  (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.arith
                (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 12
                  (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.label 0 5 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.arith
                (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 12 12
                  (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.arith
                (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 12 12
                  (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.arith
                (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 12 12
                  (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.arith
                (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 12
                  (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.arith
                (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 12
                  (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.arith
                (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 5 5
                  (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.arith
                (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 5 5
                  (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.arith
                (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 26 11
                  (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.arith
                (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 11
                  (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.arith
                (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 24 13
                  (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.arith
                (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 25 12
                  (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
                (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 26 0#64))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.arith
                (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 12 12
                  (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.arith
                (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 26
                  (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.arith
                (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
                  (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
                (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.arith
                (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
                  (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
                (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.arith
                (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
                  (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
                (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.arith
                (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
                  (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
                (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.arith
                (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
                  (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
                (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
                (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.arith
                (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
                  (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
                (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.arith
                (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
                  (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
                (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.arith
                (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
                  (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
                (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.arith
                (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
                  (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
                (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.arith
                (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
                  (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
                (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.arith
                (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
                  (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
                (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.arith
                (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
                  (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
                (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.arith
                (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
                  (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
                (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.arith
                (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
                  (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
                (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.arith
                (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
                  (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
                (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.arith
                (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
                  (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
                (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.arith
                (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
                  (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
                (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.arith
                (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
                  (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
                (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.arith
                (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
                  (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
                (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.arith
                (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
                  (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
                (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.arith
                (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
                  (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
                (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.arith
                (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
                  (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
                (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.arith
                (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
                  (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
                (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.arith
                (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
                  (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
                (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.arith
                (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
                  (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
                (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.arith
                (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
                  (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
                (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.arith
                (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
                  (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
                (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.arith
                (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
                  (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
                (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.arith
                (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
                  (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
                (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.arith
                (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
                  (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
                (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.arith
                (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
                  (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
                (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.arith
                (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
                  (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
                (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.arith
                (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
                  (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
                (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.arith
                (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
                  (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
                (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.arith
                (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
                  (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
                (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.arith
                (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
                  (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
                (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.arith
                (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
                  (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
                (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.arith
                (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
                  (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
                (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.arith
                (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
                  (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
                (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.arith
                (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
                  (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
                (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.arith
                (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
                  (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
                (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.arith
                (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
                  (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
                (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.arith
                (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
                  (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
                (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.arith
                (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
                  (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 26
                (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.arith
                (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
                  (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
                (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.arith
                (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
                  (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
                (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.arith
                (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
                  (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
                (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.arith
                (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
                  (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
                (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.arith
                (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
                  (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
                (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.arith
                (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
                  (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
                (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.arith
                (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
                  (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
                (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.arith
                (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
                  (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 26
                (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.arith
                (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
                  (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.labAsm
          (Flapjack.Compiler.Backend.LabLang.AsmWithLab.locValue 1 (Flapjack.Compiler.Backend.LabLang.Lab.lab 1 0)) 0#64
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.label 0 1 0,
        Flapjack.Compiler.Backend.LabLang.Line.labAsm
          (Flapjack.Compiler.Backend.LabLang.AsmWithLab.jump (Flapjack.Compiler.Backend.LabLang.Lab.lab 64 0)) 0#64 []
          0,
        Flapjack.Compiler.Backend.LabLang.Line.label 0 6 0] },
  { sectionId := 1,
    lines :=
      [Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.label 1 1 0,
        Flapjack.Compiler.Backend.LabLang.Line.labAsm Flapjack.Compiler.Backend.LabLang.AsmWithLab.halt 0#64 [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.label 1 2 0] },
  { sectionId := 2,
    lines :=
      [Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.label 2 1 0,
        Flapjack.Compiler.Backend.LabLang.Line.labAsm Flapjack.Compiler.Backend.LabLang.AsmWithLab.halt 0#64 [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.label 2 2 0] },
  { sectionId := 4,
    lines :=
      [Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
                (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551568#64))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.arith
                (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 26
                  (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
                (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551608#64))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
                (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551576#64))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
                (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551600#64))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.labAsm
          (Flapjack.Compiler.Backend.LabLang.AsmWithLab.jumpCmp Flapjack.Cmp.test 10
            (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) (Flapjack.Compiler.Backend.LabLang.Lab.lab 4 2))
          0#64 [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.labAsm Flapjack.Compiler.Backend.LabLang.AsmWithLab.halt 0#64 [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.label 4 2 0, Flapjack.Compiler.Backend.LabLang.Line.label 4 1 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi (Flapjack.Compiler.Encoders.Asm.HolAsm.jumpReg 1)) [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.label 4 3 0] },
  { sectionId := 5,
    lines :=
      [Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
                (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.label 5 1 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.arith
                (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 22 22
                  (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.arith
                (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 24 25
                  (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.arith
                (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
                  (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 22)))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
                (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
                (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
                (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.arith
                (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
                  (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi (Flapjack.Compiler.Encoders.Asm.HolAsm.jumpReg 22)) [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.label 5 2 0] },
  { sectionId := 6,
    lines :=
      [Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 23
                (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551528#64))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.arith
                (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 23 23
                  (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.arith
                (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 23 23
                  (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
                (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 23 0#64))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.arith
                (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 23 23
                  (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.label 6 2 0,
        Flapjack.Compiler.Backend.LabLang.Line.labAsm
          (Flapjack.Compiler.Backend.LabLang.AsmWithLab.jumpCmp Flapjack.Cmp.less 10
            (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 0#64) (Flapjack.Compiler.Backend.LabLang.Lab.lab 6 8))
          0#64 [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.labAsm
          (Flapjack.Compiler.Backend.LabLang.AsmWithLab.jump (Flapjack.Compiler.Backend.LabLang.Lab.lab 6 3)) 0#64 [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.label 6 8 0, Flapjack.Compiler.Backend.LabLang.Line.label 6 4 0,
        Flapjack.Compiler.Backend.LabLang.Line.labAsm
          (Flapjack.Compiler.Backend.LabLang.AsmWithLab.jumpCmp Flapjack.Cmp.notEqual 10
            (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64) (Flapjack.Compiler.Backend.LabLang.Lab.lab 6 7))
          0#64 [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.labAsm
          (Flapjack.Compiler.Backend.LabLang.AsmWithLab.jump (Flapjack.Compiler.Backend.LabLang.Lab.lab 6 5)) 0#64 [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.label 6 7 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
                (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 23 0#64))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.arith
                (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 23 23
                  (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.labAsm
          (Flapjack.Compiler.Backend.LabLang.AsmWithLab.jumpCmp Flapjack.Cmp.test 10
            (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64) (Flapjack.Compiler.Backend.LabLang.Lab.lab 6 6))
          0#64 [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.arith
                (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 22 22
                  (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.label 6 6 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.arith
                (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 10 10
                  (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
                (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 0#64))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.arith
                (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 11
                  (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.labAsm
          (Flapjack.Compiler.Backend.LabLang.AsmWithLab.jump (Flapjack.Compiler.Backend.LabLang.Lab.lab 6 4)) 0#64 [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.label 6 5 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
                (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 23 0#64))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.arith
                (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 23 23
                  (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.labAsm
          (Flapjack.Compiler.Backend.LabLang.AsmWithLab.jump (Flapjack.Compiler.Backend.LabLang.Lab.lab 6 2)) 0#64 [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.label 6 3 0, Flapjack.Compiler.Backend.LabLang.Line.label 6 9 0,
        Flapjack.Compiler.Backend.LabLang.Line.labAsm
          (Flapjack.Compiler.Backend.LabLang.AsmWithLab.jumpCmp Flapjack.Cmp.notEqual 10
            (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64) (Flapjack.Compiler.Backend.LabLang.Lab.lab 6 12))
          0#64 [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.labAsm
          (Flapjack.Compiler.Backend.LabLang.AsmWithLab.jump (Flapjack.Compiler.Backend.LabLang.Lab.lab 6 10)) 0#64 []
          0,
        Flapjack.Compiler.Backend.LabLang.Line.label 6 12 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
                (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 23 0#64))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.arith
                (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 23 23
                  (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.labAsm
          (Flapjack.Compiler.Backend.LabLang.AsmWithLab.jumpCmp Flapjack.Cmp.test 10
            (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64) (Flapjack.Compiler.Backend.LabLang.Lab.lab 6 11))
          0#64 [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.arith
                (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 22 22
                  (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.label 6 11 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.arith
                (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 10 10
                  (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
                (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 0#64))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.arith
                (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 11
                  (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.labAsm
          (Flapjack.Compiler.Backend.LabLang.AsmWithLab.jump (Flapjack.Compiler.Backend.LabLang.Lab.lab 6 9)) 0#64 [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.label 6 10 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.arith
                (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 10
                  (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
            (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.arith
                (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 23 10
                  (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))))
          [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.label 6 1 0,
        Flapjack.Compiler.Backend.LabLang.Line.asm
          (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi (Flapjack.Compiler.Encoders.Asm.HolAsm.jumpReg 1)) [] 0,
        Flapjack.Compiler.Backend.LabLang.Line.label 6 13 0] }]
theorem SectionStubs_eq : NamedStubs.map StackToLab.progToSectionHOL = SectionStubs := by
  kernel_rfl
#print axioms SectionStubs_eq
end InitECandidate.Proofs.BackendStages
