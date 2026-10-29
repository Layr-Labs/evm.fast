import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Allocation66
import InitECandidate.Proofs.CompilerComputation
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def Remove66 : Nat × StackLang.HolProg 64 :=
(66,
  Flapjack.Compiler.Backend.StackLang.Prog.seq
    (Flapjack.Compiler.Backend.StackLang.Prog.seq
      (Flapjack.Compiler.Backend.StackLang.Prog.inst
        (Flapjack.Compiler.Encoders.Asm.HolInst.arith
          (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
            (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64))))
      (Flapjack.Compiler.Backend.StackLang.Prog.ite Flapjack.Cmp.lower 24
        (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)
        (Flapjack.Compiler.Backend.StackLang.Prog.seq
          (Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64))
          (Flapjack.Compiler.Backend.StackLang.Prog.halt 1))
        Flapjack.Compiler.Backend.StackLang.Prog.skip))
    (Flapjack.Compiler.Backend.StackLang.Prog.seq
      (Flapjack.Compiler.Backend.StackLang.Prog.inst
        (Flapjack.Compiler.Encoders.Asm.HolInst.arith
          (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
            (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1))))
      (Flapjack.Compiler.Backend.StackLang.Prog.seq
        (Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2688614433#64))
        (Flapjack.Compiler.Backend.StackLang.Prog.seq
          (Flapjack.Compiler.Backend.StackLang.Prog.shMemOp Flapjack.WordMemOp.store8 2
            (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))
          (Flapjack.Compiler.Backend.StackLang.Prog.seq
            (Flapjack.Compiler.Backend.StackLang.Prog.inst
              (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
                (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64)))
            (Flapjack.Compiler.Backend.StackLang.Prog.seq
              (Flapjack.Compiler.Backend.StackLang.Prog.inst
                (Flapjack.Compiler.Encoders.Asm.HolInst.arith
                  (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
                    (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64))))
              (Flapjack.Compiler.Backend.StackLang.Prog.seq
                (Flapjack.Compiler.Backend.StackLang.Prog.inst
                  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
                    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
                      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26))))
                (Flapjack.Compiler.Backend.StackLang.Prog.seq
                  (Flapjack.Compiler.Backend.StackLang.Prog.inst
                    (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
                      (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551608#64)))
                  (Flapjack.Compiler.Backend.StackLang.Prog.seq
                    (Flapjack.Compiler.Backend.StackLang.Prog.inst
                      (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 2688614440#64))
                    (Flapjack.Compiler.Backend.StackLang.Prog.seq
                      (Flapjack.Compiler.Backend.StackLang.Prog.shMemOp Flapjack.WordMemOp.store 3
                        (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))
                      (Flapjack.Compiler.Backend.StackLang.Prog.seq Flapjack.Compiler.Backend.StackLang.Prog.skip
                        (Flapjack.Compiler.Backend.StackLang.Prog.seq
                          (Flapjack.Compiler.Backend.StackLang.Prog.inst
                            (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
                              (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551600#64)))
                          (Flapjack.Compiler.Backend.StackLang.Prog.seq
                            (Flapjack.Compiler.Backend.StackLang.Prog.inst
                              (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 2688614448#64))
                            (Flapjack.Compiler.Backend.StackLang.Prog.seq
                              (Flapjack.Compiler.Backend.StackLang.Prog.shMemOp Flapjack.WordMemOp.store 1
                                (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))
                              (Flapjack.Compiler.Backend.StackLang.Prog.seq
                                (Flapjack.Compiler.Backend.StackLang.Prog.inst
                                  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
                                    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 26
                                      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26))))
                                (Flapjack.Compiler.Backend.StackLang.Prog.seq
                                  Flapjack.Compiler.Backend.StackLang.Prog.skip
                                  (Flapjack.Compiler.Backend.StackLang.Prog.seq
                                    (Flapjack.Compiler.Backend.StackLang.Prog.inst
                                      (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64))
                                    (Flapjack.Compiler.Backend.StackLang.Prog.seq
                                      (Flapjack.Compiler.Backend.StackLang.Prog.seq
                                        (Flapjack.Compiler.Backend.StackLang.Prog.inst
                                          (Flapjack.Compiler.Encoders.Asm.HolInst.arith
                                            (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
                                              (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3))))
                                        (Flapjack.Compiler.Backend.StackLang.Prog.seq
                                          (Flapjack.Compiler.Backend.StackLang.Prog.inst
                                            (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
                                              (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64)))
                                          (Flapjack.Compiler.Backend.StackLang.Prog.inst
                                            (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
                                              (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64)))))
                                      (Flapjack.Compiler.Backend.StackLang.Prog.seq
                                        (Flapjack.Compiler.Backend.StackLang.Prog.ffi
                                          (Flapjack.Basis.Pure.MlString.MlString.implode [116#8, 114#8, 97#8, 112#8]) 1
                                          2 3 4 0)
                                        (Flapjack.Compiler.Backend.StackLang.Prog.seq
                                          (Flapjack.Compiler.Backend.StackLang.Prog.inst
                                            (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
                                              (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64)))
                                          (Flapjack.Compiler.Backend.StackLang.Prog.seq
                                            (Flapjack.Compiler.Backend.StackLang.Prog.inst
                                              (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
                                                (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25
                                                  18446744073709551480#64)))
                                            (Flapjack.Compiler.Backend.StackLang.Prog.seq
                                              (Flapjack.Compiler.Backend.StackLang.Prog.inst
                                                (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64))
                                              (Flapjack.Compiler.Backend.StackLang.Prog.seq
                                                Flapjack.Compiler.Backend.StackLang.Prog.skip
                                                (Flapjack.Compiler.Backend.StackLang.Prog.call none (Sum.inl 5)
                                                  none))))))))))))))))))))))))
theorem Remove66_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Allocation66 = Remove66 := by
  kernel_rfl
#print axioms Remove66_eq
end InitECandidate.Proofs.BackendStages
