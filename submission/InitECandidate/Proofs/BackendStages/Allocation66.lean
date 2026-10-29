import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function66
import InitECandidate.Proofs.CompilerComputation
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def Allocation66 : Nat × StackLang.HolProg 64 :=
(66,
  Flapjack.Compiler.Backend.StackLang.Prog.seq (Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3)
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
            (Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength)
            (Flapjack.Compiler.Backend.StackLang.Prog.seq
              (Flapjack.Compiler.Backend.StackLang.Prog.inst
                (Flapjack.Compiler.Encoders.Asm.HolInst.arith
                  (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
                    (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64))))
              (Flapjack.Compiler.Backend.StackLang.Prog.seq
                (Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1)
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
                                (Flapjack.Compiler.Backend.StackLang.Prog.get 3
                                  Flapjack.Compiler.Backend.StackLang.StoreName.currHeap)
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
                                          (Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1)
                                          (Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2)))
                                      (Flapjack.Compiler.Backend.StackLang.Prog.seq
                                        (Flapjack.Compiler.Backend.StackLang.Prog.ffi
                                          (Flapjack.Basis.Pure.MlString.MlString.implode [116#8, 114#8, 97#8, 112#8]) 1
                                          2 3 4 0)
                                        (Flapjack.Compiler.Backend.StackLang.Prog.seq
                                          (Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2)
                                          (Flapjack.Compiler.Backend.StackLang.Prog.seq
                                            (Flapjack.Compiler.Backend.StackLang.Prog.set
                                              (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 0)
                                            (Flapjack.Compiler.Backend.StackLang.Prog.seq
                                              (Flapjack.Compiler.Backend.StackLang.Prog.inst
                                                (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64))
                                              (Flapjack.Compiler.Backend.StackLang.Prog.seq
                                                Flapjack.Compiler.Backend.StackLang.Prog.skip
                                                (Flapjack.Compiler.Backend.StackLang.Prog.call none (Sum.inl 5)
                                                  none))))))))))))))))))))))))
theorem Allocation66_eq : StackAlloc.progComp (66, (function66 (.list [])).1) = Allocation66 := by
  kernel_rfl
#print axioms Allocation66_eq
end InitECandidate.Proofs.BackendStages
