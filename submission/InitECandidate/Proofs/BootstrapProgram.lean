import InitECandidate.Proofs.CompilerComputation
import InitECandidate.Proofs.BootstrapMemory
import InitECandidate.Proofs.BootstrapSteps

open scoped InitECandidate.Proofs.CompilerComputation

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false

namespace InitE
open Flapjack Flapjack.Compiler.Encoders.Asm
open Flapjack.Compiler.Encoders.RiscV.Target

def bootLoc (reg : Nat) (pc address : Nat) : HolAsm 64 :=
  .loc reg (BitVec.ofNat 64 address - BitVec.ofNat 64 pc)

def bootConst (reg value : Nat) : HolAsm 64 := .inst (.const reg (BitVec.ofNat 64 value))
def bootShift (reg amount : Nat) : HolAsm 64 :=
  .inst (.arith (.shift .lsl reg reg (.imm (BitVec.ofNat 64 amount))))
def bootStore (reg base offset : Nat) : HolAsm 64 :=
  .inst (.mem .store reg (.addr base (BitVec.ofNat 64 offset)))
def bootAdd (reg : Nat) : HolAsm 64 :=
  .inst (.arith (.binop .add reg reg (.imm 8)))

/-- Each instruction is paired with its address in the submitted image. The
five copy-body instructions execute 4606 times; the others execute once. -/
def bootstrapBlocks : List (Nat × HolAsm 64) := [
  (0x80000000, bootLoc 5 0x80000000 initDataRom),
  (0x80000008, bootLoc 6 0x80000008 initDataRam),
  (0x80000010, bootLoc 7 0x80000010 initDataEnd),
  (0x80000018, .inst (.mem .load 28 (.addr 5 0))),
  (0x8000001c, bootStore 28 6 0),
  (0x80000020, bootAdd 5),
  (0x80000024, bootAdd 6),
  (0x80000028, .jumpCmp .lower 6 (.reg 7) (-16)),
  (0x8000002c, bootLoc 5 0x8000002c initDataRam),
  (0x80000034, bootConst 6 161),
  (0x80000038, bootShift 6 24),
  (0x8000003c, bootStore 6 5 0),
  (0x80000040, bootLoc 5 0x80000040 (initDataRam+8)),
  (0x80000048, bootConst 6 2015),
  (0x8000004c, bootShift 6 24),
  (0x80000050, bootStore 6 5 0),
  (0x80000054, bootLoc 5 0x80000054 (initDataRam+16)),
  (0x8000005c, bootConst 6 63),
  (0x80000060, bootShift 6 29),
  (0x80000064, bootStore 6 5 0),
  (0x80000068, bootConst 5 161),
  (0x8000006c, bootShift 5 24),
  (0x80000070, bootLoc 6 0x80000070 (initDataRam+24)),
  (0x80000078, bootStore 6 5 0),
  (0x8000007c, bootLoc 6 0x8000007c initDataEnd),
  (0x80000084, bootStore 6 5 8),
  (0x80000088, bootLoc 6 0x80000088 initDataEnd),
  (0x80000090, bootStore 6 5 16),
  (0x80000094, bootLoc 6 0x80000094 0x800f0134),
  (0x8000009c, bootStore 6 5 24),
  (0x800000a0, bootLoc 6 0x800000a0 0x800f1000),
  (0x800000a8, bootStore 6 5 32),
  (0x800000ac, bootConst 11 161),
  (0x800000b0, bootShift 11 24),
  (0x800000b4, bootConst 12 2015),
  (0x800000b8, bootShift 12 24),
  (0x800000bc, bootConst 13 63),
  (0x800000c0, bootShift 13 29),
  (0x800000c4, bootLoc 10 0x800000c4 nativePc),
  (0x800000cc, .jump (BitVec.ofNat 64 nativePc - 0x800000cc))
]

/-- Actual bootstrap bytes are the verified encoder's bytes, not just valid
assembler output. This also detects accidentally reintroducing ADDIW. -/
theorem bootstrap_bytes_match :
    (bootstrapBlocks.flatMap fun block => riscvEnc block.2) =
      InitECandidate.bootPrefix.take 208 := by decide_cbv

theorem bootstrap_instructions_admitted :
    bootstrapBlocks.all (fun block => asmOkExact block.2 riscvConfig) = true := by
  decide_cbv

def bootstrapSteps : Nat := 6 + 5 * initDataWords + 41

theorem bootstrapSteps_eq : bootstrapSteps = 23077 := by decide

end InitE
